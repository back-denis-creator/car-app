<?php

namespace App\Transformers;

use App\Models\Link;
use League\Fractal\TransformerAbstract;

class LinkTransformer extends TransformerAbstract
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
    public function transform(Link $model)
    {
      return [
        'id' => $model->id,
        'name' => $model->name,
        'url' => $model->url,
        'lifetime' => $model->lifetime,
        'transitions' => $model->transitions,
        'created_at' => $model->created_at->toIso8601String(),
        'updated_at' => $model->updated_at->toIso8601String(),
      ];
    }
}
