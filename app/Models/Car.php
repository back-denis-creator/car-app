<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Car extends Model
{
    use HasFactory, AsSource;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'mark_id',
        'manufacturer_id',
        'vin',
        'fuel_id',
        'engine_capacity',
        'production_year',
        'price',
        'country_id',
    ];
}
