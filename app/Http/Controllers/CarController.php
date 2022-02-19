<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Transformers\CarTransformer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CarController extends Controller
{

    /**
     * Получение всех машин
     */
    public function getCars()
    {
        $cars = Car::all();

        return fractal()
            ->collection($cars)
            ->transformWith(new CarTransformer())
            ->toArray();
    }

    /**
     * Получение конкретной машины
     *
     * @param string $id
     */
    public function getCar($id)
    {
        $car = Car::find($id);

        return fractal()
            ->item($car)
            ->transformWith(new CarTransformer())
            ->toArray();
    }

}
