<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Spatie\Translatable\HasTranslations;

class Hotel extends Model
{
    use HasFactory;
    use HasTranslations;

    public $translatable = ['name','description','address'];

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
    public function rooms()
    {
        return $this->hasMany(Room::class);
    }
}