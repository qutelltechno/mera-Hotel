<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Complement extends Model
{
    use HasFactory;
	use HasTranslations;

    public $translatable = ['name','item'];

	protected $table = 'complements';
	
    protected $fillable = [
	  'name',
	  'item',
	  'is_publish'
    ];		
}
