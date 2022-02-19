<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Transformers\CarTransformer;
use Illuminate\Http\Request;

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

    /**
     * Вычисление таможенной пошлины
     */
    public function calculate(Request $request)
    {
        // dd($request);

        //коэффициент возраста авто
        $carAgeFactor = (int) date("Y") - $request->year - 1;
        if($carAgeFactor > 15) {
            $carAgeFactor = 15;
        }

        //коэффициент топлива
        switch ($request->fuel) {
            case "benzine":
                $fuelRatio = 150;
                break;
            case "gas":
                $fuelRatio = 75;
                break;
            case "hybrid":
                $fuelRatio = 75;
                break;
            case "electro":
                $fuelRatio = 75;
                break;
            case "diesel":
                $fuelRatio = 75;
                break;
            default:
                $fuelRatio = 100;
                break;
        }

        // $result = [
        //     'excise' => $request->price,
        //     'importDuty' => $request->volume,
        //     'vat' => $request->year,
        // ];

        return $fuelRatio;
    }

}
