<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;

    protected $fillable = [
        'name'
    ];

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_team', 'post_id', 'team_id');
    }

    public function employee()
    {
        return $this->hasMany(Employee::class);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_team', 'team_id', 'product_id');
    }

    public function prices()
    {
        return $this->belongsToMany(Price::class, 'price_team', 'team_id', 'price_id');
    }
}
