<?php

namespace App\Models\Lists;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Fuel extends Model
{
    use HasFactory, AsSource;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'name',
    ];
}
