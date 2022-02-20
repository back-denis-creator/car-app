<?php

namespace App\Orchid\Screens\Shipping;

use App\Models\Car;
use App\Models\Shipping;
use App\Models\Lists\Country;
use App\Models\Lists\Fuel;
use App\Models\Lists\Manufacture;
use App\Models\Lists\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\PictureMini;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class ShippingEditScreen extends Screen
{
    /**
     * Display header name.
     *
     * @var string
     */
    public $name = 'Creating a new shipping';

    /**
     * @var bool
     */
    public $exists = false;

    /**
     * Query data.
     *
     * @param Shipping $shipping
     *
     * @return array
     */
    public function query(Shipping $shipping): array
    {
        $this->exists = $shipping->exists;

        if ($this->exists) {
            $this->name = __('Edit shipping');
        }

        return [
            'shipping' => $shipping,
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
            Button::make('Create shipping')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->exists),

            Button::make('Remove')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->exists),
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
            Layout::columns([
                Layout::rows([
                    Group::make([
                        Select::make('shipping.country_id')
                            ->title(__('Country'))
                            ->required()
                            ->fromModel(Country::class, 'name', 'id'),
                        Relation::make('shipping.car_id')
                            ->title(__('Car'))
                            ->required()
                            ->fromModel(Car::class, 'id')
                            ->displayAppend('full_name'),
                        Input::make('shipping.cost')
                            ->title(__('Cost'))
                            ->required()
                            ->type('number')
                    ]),
                ]),              
            ]),
        ];
    }

    /**
     * @param Shipping $shipping
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Shipping $shipping, Request $request)
    {
        $shippingData = $request->get('shipping');

        $shipping->fill($shippingData)->save();

        Alert::info(__('You have successfully created an shipping.'));

        return redirect()->route('platform.shippings');
    }

    /**
     * @param Shipping $shipping
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Shipping $shipping)
    {
        $shipping->delete();

        Alert::info(__('You have successfully deleted the shipping.'));

        return redirect()->route('platform.shippings');
    }
}
