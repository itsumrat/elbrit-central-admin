<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'details',
        'pin_post',
        'image',
        'filenames',
        'video',
        'published_at'
    ];


    public function teams()
    {
        return $this->belongsToMany(Team::class, 'post_team', 'post_id', 'team_id')->with('employee');
    }

    public function employees()
    {
        return $this->belongsToMany(Employee::class, 'post_employee', 'post_id', 'employee_id');
    }

    public function setImageAttribute($value)
    {
        $this->attributes['image'] = json_encode($value);
    }

    public function getImageAttribute($value)
    {
       return $this->attributes['image'] = json_decode($value);
    }
    public function setFilenamesAttribute($value)
    {
        $this->attributes['filenames'] = json_encode($value);
    }

    public function getFilenamesAttribute($value)
    {
       return $this->attributes['filenames'] = json_decode($value);
    }

    public function scopePublished($query)
    {
        $query->where('published_at', '<=', Carbon::now());
    }

}
