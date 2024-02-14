<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReservationPolicy extends Model
{
    use HasFactory;
    // ,    HasTranslations
    protected $table = 'reservation_policies';
    // public $translatable = ['title','value'];
    protected $fillable = [
        'title',
        'value',
    ];

}
