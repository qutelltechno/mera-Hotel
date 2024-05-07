<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Spatie\Translatable\HasTranslations;
use App\Models\Complement;

class InvoiceComplement extends Model
{
    protected $table='invoice_complements';
    protected $fillable = [
        'id',
        'complement_id',
        'price',
        'invoice_number',
    ];


    public function complements()
    {
        return $this->hasMany(Complement::class,'id', 'complement_id');
    }



}
