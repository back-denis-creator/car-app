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
        //коэффициент возраста авто
        $carAgeFactor = (int) date("Y") - $request->year - 1;
        if($carAgeFactor > 15) {
            $carAgeFactor = 15;
        }else if($carAgeFactor <= 0) {
            $carAgeFactor = 1;
        }

        //коэффициент топлива
        switch ($request->fuel) {
            case "benzine":
                if(($request->volume * 1000) > 3000) {
                    $fuelRatio = 100;
                }else if(($request->volume * 1000) <= 3000) {
                    $fuelRatio = 50;
                }
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
                if(($request->volume * 1000) > 3500) {
                    $fuelRatio = 150;
                }else if(($request->volume * 1000) <= 3500) {
                    $fuelRatio = 75;
                }
                break;
            default:
                $fuelRatio = 100;
                break;
        }

        //акциз
        $excise = (float) bcdiv(($fuelRatio * $carAgeFactor * ($request->volume * 1000) / 1000 * 0.28), 1, 2);

        //ввозная пошлина
        $importDuty = (float) bcdiv(($request->price + $request->cost ?? 0)/ 100 * 10, 1, 2);

        //таможенный платеж
        $customPayments = (float) bcdiv(($excise + $importDuty + $request->price) / 100 * 20, 1, 2);

        return  [
           'E' => $excise,
           'F' => $importDuty,
           'T' => $customPayments,
        ];
    }

}
