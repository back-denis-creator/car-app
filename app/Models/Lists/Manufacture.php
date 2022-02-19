<?php

namespace App\Models\Lists;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Manufacture extends Model
{
    use HasFactory, AsSource;

    public $timestamps = false;
}
