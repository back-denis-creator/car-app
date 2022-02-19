<?php

namespace App\Orchid\Layouts\Car;

use App\Models\Car;
use Carbon\Carbon;
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
            TD::make('name', __('Name'))
                ->filter(TD::FILTER_TEXT)
                ->width(150)
                ->render(function (Car $car) {
                    return Link::make($car->car)
                        ->route('platform.car.edit', $car);
                }),
            TD::make('email', __('Email'))
                ->filter(TD::FILTER_TEXT)
                ->width(180)
                ->render(function (Car $car) {
                    return Link::make($car->email)
                        ->route('platform.car.edit', $car);
                }),
            TD::make('telephone', __('Telephone'))
                ->filter(TD::FILTER_TEXT)
                ->width(180)
                ->render(function (Car $car) {
                    return Link::make($car->telephone)
                        ->route('platform.car.edit', $car);
                }),
            TD::make('created_at', __('Created'))
                ->sort()
                ->width(150)
                ->render(function (\App\Models\Car $car) {
                    $format    = 'Y.m.d H:m:i';
                    $attribute = $car->created_at;
                    if ($attribute instanceof Carbon) {
                        return $attribute->format($format);
                    }
                    return '';
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
