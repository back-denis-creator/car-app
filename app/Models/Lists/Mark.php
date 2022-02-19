<?php

namespace App\Models\Lists;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Mark extends Model
{
    use HasFactory, AsSource;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'name',
    ];
}
