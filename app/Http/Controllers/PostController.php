<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Team;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;
use Response;


use App\Notifications\newRecordNotification;
use App\Notifications\newRecordEditedNotification;
use App\Notifications\OneSignalNotification;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('published_at', 'ASC')->get();
        return view('admin.walls.index', compact('posts'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $employees = Employee::all();
        $teams = Team::all();
        return view('admin.walls.create', compact('employees', 'teams'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//dd($request->image);
        $request->validate([
            'employee_ids' => 'required_without:team_ids',
            'video' => 'max:51200',
            // 'filenames' => 'required',
            // 'filenames.*' => 'mimes:doc,pdf,docx,zip',
            // 'image' => 'mimes:png',
            'image' => 'required',
            'image.*' => 'image|mimes:jpeg,jpg,bmp,png'
        ]);

        $success = false;
        DB::beginTransaction();
        try {
            $post = new Post;
            $post->details = $request->details;
            $files = [];
            if($request->hasFile('image')){
                $images = $request->file('image');
                foreach($images as $file) {
                    $file_name = date('YmdHis') . rand(10,100). "." . $file->getClientOriginalExtension();
                    $file->move('uploads/', $file_name);
                    $files[] = $file_name;
                }
            }
            $post->image = $files;

            $data= [];
            if($request->hasfile('filenames'))
            {
               foreach($request->file('filenames') as $attachment)
               {
                $file_name = date('YmdHis') . rand(10,100). "." . $attachment->getClientOriginalExtension();
                $attachment->move('uploads/', $file_name);
                $data[] = $file_name;
               }
            }
            
             $post->filenames=$data;

            if($request->hasFile('video')){
                $file = $request->file('video');
                $video = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/', $video);
                $post->video = "$video";
            }
            $post->pin_post = $request->pin_post == 1 ? 1 : 0;
            $post->published_at = $request->published_at;
            if ($post->save()) {
                if($post->employees()!=null){
                    $post->employees()->attach($request->employee_ids);
                }
                if($post->teams()!=null){
                    $post->teams()->attach($request->team_ids);
                }
              
                $success = true;
            }
        } catch (\Exception $e) {

        }
            if ($success) {
                DB::commit();
                if($request->has('employee_ids')){
                $notifyUsers = Employee::where(function($query) use ($request) {
                    return $query->whereIn('id', $request->employee_ids)
                    ->orWhere('team_id',$request->team_ids);
                })
                ->get();
                
            }
            else
            {

                $notifyUsers = Employee::where(function($query) use ($request) {
                    return $query->Where('team_id',$request->team_ids);
                })
                ->get();


            }

            $payerIds = [];

            foreach($notifyUsers as $user){
                if($user->player_id != null){
                    $payerIds[] = $user->player_id;
                }
                
                $user->notify(new newRecordNotification($user));
            }

            

            OneSignalNotification::oneSignalData($payerIds, $request->details, 'new');
            


            return redirect()->route('posts.index')->with('success','Post Created successfully.');


        } 
        else {
            DB::rollback();
            return redirect()->back()->withErrorMessage('Something went wrong');
        } 

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        $employees = Employee::all();
        $teams = Team::all();
        $post = Post::find($id);

        return view('admin.walls.edit', compact('employees', 'teams', 'post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $request->validate([
            'details' => 'required',
            'video' => 'max:51200'
        ]);
        
    $notifyUsers = Employee::where(function($query) use ($request) {
        return $query->whereIn('id', $request->employee_ids)
        ->orWhere('team_id',$request->team_ids);
     })
     ->get();

    $msg = [

        'employee_ids' => $request->employee_ids,
        'post_name' => substr($request->details, 0, 8)

    ];

        $success = false;
        DB::beginTransaction();
        try {
            $post->details = $request->details;
            $files = [];
            if($request->hasFile('image')){                
                $images = $request->file('image');                
                foreach($images as $file) {
                    $file_name = date('YmdHis') . rand(10,100). "." . $file->getClientOriginalExtension();
                    $file->move('uploads/', $file_name);
                    $files[] = $file_name;
                }
            } else {
                $files = $post->image;
            }
            $post->image = $files;
            if($request->hasFile('video')){
                if($post->video != ''  && $post->video != null){
                    $video_old = 'uploads/'.$post->video;
                    unlink($video_old);
                }

                $file = $request->file('video');
                $video = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/', $video);
                $post->video = "$video";
            }

            $post->pin_post = $request->pin_post == 1 ? 1 : 0;

            if ($post->update()) {
                $post->employees()->sync($request->employee_ids);
                $post->teams()->sync($request->team_ids);
                $success = true;
            }
        } catch (\Exception $e) {
            return redirect()->back()->withErrors($e);
        }

        if ($success) {
            DB::commit();
            

            $payerIds = [];

            foreach($notifyUsers as $user){
                if($user->player_id != null){
                    $payerIds[] = $user->player_id;
                }
                
                $user->notify(new newRecordEditedNotification($msg));
            }

            if(!empty($payerIds)){

                OneSignalNotification::oneSignalData($payerIds, $request->details, 'update');
            }

            return redirect()->route('posts.index')
                            ->with('success','Post Updated successfully.');


        } else {
            DB::rollback();
            return redirect()->back()->withErrorMessage('Something went wrong');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        // if(!empty($post->image)){
        //     foreach($post->image as $image){
        //         $img_old = 'uploads/'.$image;
        //         unlink($img_old);
        //     }
        // }

        // if($post->video != ''  && $post->video != null){
        //     $img_old = 'uploads/'.$post->video;
        //     unlink($img_old);
        // }

        $post->delete();
        
        return redirect()->route('posts.index')
                        ->with('success','Post Deleted Successfully.');

    }
}