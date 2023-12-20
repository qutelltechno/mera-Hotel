<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'image',
        'email',
        'phone',
        'address',
        'map',
        'facebook',
        'twitter',
        'instagram',
        'youtube',
        'lan',
        'is_main'
    ];
}
