<?php

namespace App\Orchid\Layouts\Car;

use App\Models\Car;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class CarListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'cars';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): array
    {
        return [
            TD::make('ID', __('ID'))
                ->width(30)
                ->render(function (Car $car) {
                    return Link::make($car->id)
                        ->route('platform.car.edit', $car);
                }),

            TD::make('image', __('Image'))
                ->width(100)
                ->render(function (Car $car) {
                    $images = $car->attachment()->get();
                    if (!empty($images[0])) {
                        return "<a href='car/{$car->id}'><img src='{$images[0]->relativeUrl}' alt='sample' width='50' height='50' class='mw-25 d-block img-fluid'></a>";
                    } else {
                        return "<a href='car/{$car->id}'>No picture</a>";
                    }
                }),

            TD::make('name', __('Name'))
                ->width(150)
                ->render(function (Car $car) {
                    return Link::make($car->manufacturer->name . ' ' . $car->mark->name)
                        ->route('platform.car.edit', $car);
                }),

            TD::make('price', __('Price'))
                ->width(150)
                ->render(function (Car $car) {
                    return Link::make($car->price)
                        ->route('platform.car.edit', $car);
                }),

            TD::make('action', __('Action'))
                ->width(50)
                ->render(function (\App\Models\Car $car) {
                    return
                        Button::make('Delete')
                        ->method('remove')
                        ->parameters(['id' => $car->id])
                        ->icon('trash');
                })
        ];
    }
}
