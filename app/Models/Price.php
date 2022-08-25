<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    use HasFactory;

    protected $fillable = [
        'brand_name',
        'product_name',
        'pack',
        'mrp',
        'ptr',
        'pts'
    ];

    public function teams()
    {
        return $this->belongsToMany(Team::class, 'price_team', 'price_id', 'team_id')->with('employee');
    }
}
