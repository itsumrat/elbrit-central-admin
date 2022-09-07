<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;
use App\Models\Employee;

use App\Notifications\newProductsNotification;
use App\Notifications\newRecordEditedNotification;
use App\Notifications\OneSignalNotification;


class ProductController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $teams = Team::all();
        return view('admin.products.create', compact('teams'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required',
            'product_uniqueness' => 'required',
            // 'carton_image' => 'image|max:5128',
            // 'strip_image' => 'image|max:5128',
            // 'tablet_image' => 'image|max:5128',
            // 'logo_image' => 'image|max:5128',
        ]);

        if($request->hasFile('logo_image') || $request->hasFile('strip_image') || $request->hasFile('tablet_image') || $request->hasFile('carton_image')){

        }else{

            $request->validate([
                'carton_image' => 'image|max:5128',
                'strip_image' => 'image|max:5128',
                'tablet_image' => 'image|max:5128',
                'logo_image' => 'image|max:5128',
            ]);
        }

        $success = false;
        DB::beginTransaction();
        try {
            $input = $request->all();

            if($request->hasFile('carton_image')){
                $file = $request->file('carton_image');
                $carton_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/carton/', $carton_image);
                $input['carton_image'] = "$carton_image";
            }
            if($request->hasFile('strip_image')){
                $file = $request->file('strip_image');
                $strip_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/strip/', $strip_image);
                $input['strip_image'] = "$strip_image";
            }
            if($request->hasFile('tablet_image')){
                $file = $request->file('tablet_image');
                $tablet_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/tablet/', $tablet_image);
                $input['tablet_image'] = "$tablet_image";
            }
            if($request->hasFile('logo_image')){
                $file = $request->file('logo_image');
                $logo_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/logo/', $logo_image);
                $input['logo_image'] = "$logo_image";
            }

            if ($product = Product::create($input)) {
                // $product->employees()->attach($request->employee_ids);
                $product->teams()->attach($request->team_ids);
                $success = true;
            }
        } catch (\Exception $e) {
        }

        if ($success) {
            DB::commit();

            $notifyUsers = Employee::where(function($query) use ($request) {
                return $query->whereIn('team_id', $request->team_ids);})
             ->get();

             $payerIds = [];
    
             foreach($notifyUsers as $user){

                if($user->player_id != null){
                    $payerIds[] = $user->player_id;
                }

                $user->notify(new newProductsNotification($user));
            }
           

            OneSignalNotification::oneSignalData($payerIds, $request->product_name, 'new');
            


    
            return redirect()->route('products.index')
                            ->with('success','Product Created successfully.');
        } else {
            DB::rollback();
            return redirect()->back()->withErrorMessage('Something went wrong');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $teams = Team::all();
        return view('admin.products.edit', compact('product', 'teams'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $request->validate([
            'product_name' => 'required',
            'product_uniqueness' => 'required',
            'carton_image' => 'image|max:5128',
            'strip_image' => 'image|max:5128',
            'tablet_image' => 'image|max:5128',
            'logo_image' => 'image|max:5128',
        ]);

        $success = false;
        DB::beginTransaction();
        try {
            $input = $request->all();

            if($request->hasFile('carton_image')){
                
                if($product->carton_image != ''  && $product->carton_image != null){
                    $carton_image_old = 'uploads/carton/'.$product->carton_image;
                    unlink($carton_image_old);
                }

                $file = $request->file('carton_image');
                $carton_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/carton/', $carton_image);
                $input['carton_image'] = "$carton_image";
            }
            if($request->hasFile('strip_image')){
                if($product->strip_image != ''  && $product->strip_image != null){
                    $strip_image_old = 'uploads/strip/'.$product->strip_image;
                    unlink($strip_image_old);
                }

                $file = $request->file('strip_image');
                $strip_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/strip/', $strip_image);
                $input['strip_image'] = "$strip_image";
            }
            if($request->hasFile('tablet_image')){
                if($product->tablet_image != ''  && $product->tablet_image != null){
                    $tablet_image_old = 'uploads/tablet/'.$product->tablet_image;
                    unlink($tablet_image_old);
                }
                $file = $request->file('tablet_image');
                $tablet_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/tablet/', $tablet_image);
                $input['tablet_image'] = "$tablet_image";
            }
            if($request->hasFile('logo_image')){
                if($product->logo_image != ''  && $product->logo_image != null){
                    $logo_image_old = 'uploads/logo/'.$product->logo_image;
                    unlink($logo_image_old);
                }
                $file = $request->file('logo_image');
                $logo_image = date('YmdHis') . "." . $file->getClientOriginalExtension();
                $file->move('uploads/logo/', $logo_image);
                $input['logo_image'] = "$logo_image";
            }

            if ($product->update($input)) {
                // $product->employees()->sync($request->employee_ids);                
                $product->teams()->sync($request->team_ids);
                $success = true;
            }
        } catch (\Exception $e) {

        }
        $notifyUsers = Employee::where(function($query) use ($request) {
            return $query->whereIn('team_id', $request->team_ids);})
         ->get();
         $msg = [
            'post_name' => $request->product_name
        ];

        if ($success) {
            DB::commit();

            $payerIds = [];

            foreach($notifyUsers as $user){
                if($user->player_id != null){
                    $payerIds[] = $user->player_id;
                }

                $user->notify(new newRecordEditedNotification($msg));
            }

            

            OneSignalNotification::oneSignalData($payerIds, $request->product_name, 'update');
            

            return redirect()->route('products.index')
                            ->with('success','Product Updated successfully.');
        } else {
            DB::rollback();
            return redirect()->back()->withErrorMessage('Something went wrong');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        if($product->carton_image != ''  && $product->carton_image != null){
            $carton_image_old = 'uploads/carton/'.$product->carton_image;
            unlink($carton_image_old);
        }

        if($product->strip_image != ''  && $product->strip_image != null){
            $strip_image_old = 'uploads/strip/'.$product->strip_image;
            unlink($strip_image_old);
        }

        if($product->tablet_image != ''  && $product->tablet_image != null){
            $tablet_image_old = 'uploads/tablet/'.$product->tablet_image;
            unlink($tablet_image_old);
        }

        if($product->logo_image != ''  && $product->logo_image != null){
            $logo_image_old = 'uploads/logo/'.$product->logo_image;
            unlink($logo_image_old);
        }

        $product->delete();
        
        return redirect()->route('products.index')
                        ->with('success','Product Deleted Successfully.');
    }
}