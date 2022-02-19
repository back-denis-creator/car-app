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
      return [
        'id' => $model->id,
        'name' => $model->manufacturer->name ?? null . ' ' . $model->mark->name ?? null,
        'manufacturer' => $model->manufacturer->name ?? null,
        'mark' => $model->mark->name ?? null,
        'year' => $model->production_year,
        'engine_capacity' => $model->engine_capacity,
        'price' => $model->price,
        'vin' => $model->vin,
        'fuel' => $model->fuel->name ?? null,
        'country' => $model->country->name ?? null,
      ];
    }
}
