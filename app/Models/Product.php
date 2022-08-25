<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_name',
        'product_uniqueness',
        'carton_image',
        'strip_image',
        'tablet_image',
        'logo_image',
        'label_claim',
        'top',
        'tcp',
        'target_doctors',
        'patients_profile',
        'cpa',
        'others'
    ];

    public function teams()
    {
        return $this->belongsToMany(Team::class, 'product_team', 'product_id', 'team_id')->with('employee');
    }
}
