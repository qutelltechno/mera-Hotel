<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MunicipalityFees extends Model
{
    use HasFactory;
    protected $table='municipality_feeses';
    protected $fillable = [
        'title', 
		'percentage', 
		'is_publish',
    ];	
}
