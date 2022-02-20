<?php

namespace App\Orchid\Layouts\Shipping;

use App\Models\Shipping;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class ShippingListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'shippings';

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
                ->render(function (Shipping $shipping) {
                    return Link::make($shipping->id)
                        ->route('platform.shipping.edit', $shipping);
                }),

            TD::make('country_id', __('Country'))
                ->width(150)
                ->render(function (Shipping $shipping) {
                    return Link::make($shipping->country->name)
                        ->route('platform.shipping.edit', $shipping);
                }),

            TD::make('car_id', __('Car'))
                ->width(150)
                ->render(function (Shipping $shipping) {
                    return Link::make($shipping->car->full_name)
                        ->route('platform.shipping.edit', $shipping);
                }),

            TD::make('cost', __('Cost'))
                ->width(150)
                ->render(function (Shipping $shipping) {
                    return Link::make($shipping->cost)
                        ->route('platform.shipping.edit', $shipping);
                }),

            TD::make('action', __('Action'))
                ->width(50)
                ->render(function (\App\Models\Shipping $shipping) {
                    return
                        Button::make('Delete')
                        ->method('remove')
                        ->parameters(['id' => $shipping->id])
                        ->icon('trash');
                })
        ];
    }
}
