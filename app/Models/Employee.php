<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Employee extends Model
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'mobile_no',
        'team_id',
        'employee_code',
        'designation',
        'hq',
        'manager_employee_code',
        'doj',
        'dob',
    ];

    public function team() {
        return $this->belongsTo(Team::class, 'team_id', 'id');
    }

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_employee', 'employee_id', 'post_id');
    }
}
