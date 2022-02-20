<?php

namespace App\Orchid\Screens\Shipping;

use Orchid\Screen\Screen;
use App\Models\Shipping;
use App\Orchid\Layouts\Shipping\ShippingListLayout;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Alert;

class ShippingListScreen extends Screen
{
    public $permission = 'platform.shippings';

    /**
     * Display header name.
     *
     * @var string
     */
    public $name = 'Shippings';

    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'shippings' => Shipping::paginate(10)
        ];
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): array
    {
        return [
            Link::make('Create new shipping')
                ->icon('pencil')
                ->route('platform.shipping.edit'),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): array
    {
        return [
            ShippingListLayout::class
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove($id)
    {
        $shipping = Shipping::find($id);
        $shipping->delete();

        Alert::info(__('You have successfully deleted the shipping.'));

        return redirect()->route('platform.shippings');
    }
}
