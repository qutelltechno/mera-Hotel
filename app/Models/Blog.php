<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Blog extends Model
{
    use HasFactory;
    use HasTranslations;

    public $translatable = ['title','description'];


    protected $fillable = [
        'title',
        'slug',
        'thumbnail',
        'description',
        'lan',
        'category_id',
        'is_publish',
        'og_title',
        'og_image',
        'og_description',
        'og_keywords',
        'user_id',
    ];
}
