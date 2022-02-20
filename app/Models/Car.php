<?php

namespace App\Models;

use App\Models\Lists\Mark;
use App\Models\Lists\Manufacture;
use App\Models\Lists\Fuel;
use App\Models\Lists\Country;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Screen\AsSource;

class Car extends Model
{
    use HasFactory, AsSource, Attachable;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'picture',
        'mark_id',
        'manufacturer_id',
        'vin',
        'fuel_id',
        'engine_capacity',
        'production_year',
        'price',
        'country_id',
    ];

    public function getFullNameAttribute(): string
    {
        return "{$this->manufacturer->name} {$this->mark->name}";
    }

    /**
     * Получить марку, которому принадлежит автомобиль.
     */
    public function mark()
    {
        return $this->belongsTo(Mark::class);
    }

    /**
     * Получить производителя, которому принадлежит автомобиль.
     */
    public function manufacturer()
    {
        return $this->belongsTo(Manufacture::class);
    }

    /**
     * Получить вид топлива, которому принадлежит автомобиль.
     */
    public function fuel()
    {
        return $this->belongsTo(Fuel::class);
    }

    /**
     * Получить страну умпортера, которому принадлежит автомобиль.
     */
    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    /**
     * Получить доставку, которому принадлежит автомобиль.
     */
    public function shipping()
    {
        return $this->hasOne(Shipping::class);
    }

}
