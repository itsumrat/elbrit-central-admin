<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use App\Models\Team;
use App\Models\Price;
use App\Models\Product;
use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Response;

class HomeController extends Controller
{
    public function getPosts()
    {
        $posts = Post::all();
        return response()->json(['data' => $posts], 200);
    }

    public function getPostsByEmployee($employee_id)
    {
        $posts = Post::whereHas('teams', function($q) use ($employee_id){
            $q->whereHas('employee', function($qu) use ($employee_id){
                $qu->where('id', $employee_id);
            });
        })->orWherehas('employees', function($query) use ($employee_id){
            $query->where('employee_id', $employee_id);
        })->orderBy('pin_post', 'DESC')->get();

 
        return response()->json(['data' => $posts], 200);
    }

    public function getPrices()
    {
        $prices = Price::all();
        return response()->json(['data' => $prices], 200);
    }

    public function getPricesByTeam($team_id) 
    {
        $team = Team::findOrFail($team_id);
        $prices = $team->prices;
        return response()->json(['data' => $prices], 200);
    }

    public function getProducts()
    {
        $products = Product::all();
        return response()->json(['data' => $products], 200);
    }

    public function getProductsByTeam($team_id)
    {
        $team = Team::findOrFail($team_id);
        $products = $team->products;
        return response()->json(['data' => $products], 200);
    }

    public function sendnotify($employee_id)
    {
        $not[]=0;
        $user = Employee::has('notifications')->where('id', $employee_id)->first();
        if($user!=null){
            foreach ($user->notifications as $notification) {
                $not[] = $notification;
                }
        }
        else {
            $not= array('data' => 'No Notification');
        }
        return response()->json(['data' => $not], 200);
    }


    
}
