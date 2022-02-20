<?php

namespace App\Models;

use App\Models\Lists\Country;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Shipping extends Model
{
    use HasFactory, AsSource;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'country_id',
        'car_id',
        'cost'
    ];

    /**
     * Получить машину, данной доставки.
     */
    public function car()
    {
        return $this->belongsTo(Car::class);
    }

    /**
     * Получить страну, данной доставки.
     */
    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
