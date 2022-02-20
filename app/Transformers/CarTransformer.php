<?php

namespace App\Transformers;

use App\Models\Car;
use League\Fractal\TransformerAbstract;

class CarTransformer extends TransformerAbstract
{
    /**
     * List of resources to automatically include
     *
     * @var array
     */
    protected $defaultIncludes = [
        //
    ];

    /**
     * List of resources possible to include
     *
     * @var array
     */
    protected $availableIncludes = [
        //
    ];

    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Car $model)
    {
      $price = bcdiv($model->price, 1, 2);
      $engineCapacity = bcdiv($model->engine_capacity, 1, 2);

      return [
        'id' => $model->id,
        'shipping' => $model->shipping,
        'name' => ($model->manufacturer->name . ' ' . $model->mark->name) ?? null,
        'image' => $model->picture,
        'manufacturer' => $model->manufacturer->name ?? null,
        'mark' => $model->mark->name ?? null,
        'year' => $model->production_year,
        'engine_capacity' => (float) $engineCapacity,
        'price' => (float) $price,
        'vin' => $model->vin,
        'fuel' => $model->fuel->name ?? null,
        'country' => $model->country->name ?? null,
      ];
    }
}
