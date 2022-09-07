<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Price;
use Illuminate\Http\Request;
use App\Notifications\newPriceNotification;
use App\Notifications\newRecordEditedNotification;

use App\Models\Employee;
use Illuminate\Support\Facades\Notification;

use App\Notifications\OneSignalNotification;



class PriceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $prices = Price::all();
        return view('admin.prices.index', compact('prices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $teams = Team::all();
        return view('admin.prices.create', compact('teams'));
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
            'brand_name' => 'required',
            'product_name' => 'required'
        ]);


        $notifyUsers = Employee::where(function($query) use ($request) {
            return $query->whereIn('team_id', $request->team_ids);})
         ->get();

        
        $payerIds = [];

        foreach($notifyUsers as $user){
            if($user->player_id != null){
                $payerIds[] = $user->player_id;
            }
            $user->notify(new newPriceNotification($user));
        }

        if(!empty($payerIds)){

            OneSignalNotification::oneSignalData($payerIds, $request->product_name, 'new');
        }


        if($price = Price::create($request->all())) {
            $price->teams()->attach($request->team_ids);
        }

        return redirect()->route('prices.index')
                            ->with('success','Price Created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Price  $price
     * @return \Illuminate\Http\Response
     */
    public function show(Price $price)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Price  $price
     * @return \Illuminate\Http\Response
     */
    public function edit(Price $price)
    {

        $teams = Team::all();
        return view('admin.prices.edit', compact('price','teams'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Price  $price
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Price $price)
    {
        $request->validate([
            'brand_name' => 'required',
            'product_name' => 'required'
        ]);

        $notifyUsers = Employee::where(function($query) use ($request) {
            return $query->whereIn('team_id', $request->team_ids);})
         ->get();
        $msg = [
            'post_name' => $request->product_name
        ];

        $payerIds = [];

        foreach($notifyUsers as $user){
            if($user->player_id != null){
                $payerIds[] = $user->player_id;
            }
            $user->notify(new newRecordEditedNotification($msg));
        }

        if(!empty($payerIds)){

            OneSignalNotification::oneSignalData($payerIds, $request->product_name, 'update');
        }


       

        if($price->update($request->all())) {
            $price->teams()->sync($request->team_ids);
        }

        return redirect()->route('prices.index')
                            ->with('success','Price Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Price  $price
     * @return \Illuminate\Http\Response
     */
    public function destroy(Price $price)
    {
        $price->delete();        
        return redirect()->route('prices.index')
                        ->with('success','Prices Deleted Successfully.');
    }
}
