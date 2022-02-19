<?php

namespace App\Orchid\Screens\Car;

use Orchid\Screen\Screen;
use App\Models\Car;
use App\Orchid\Layouts\Car\CarListLayout;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Alert;

class CarListScreen extends Screen
{
    public $permission = 'platform.cars';

    /**
     * Display header name.
     *
     * @var string
     */
    public $name = 'Cars';

    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'cars' => Car::paginate(10)
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
            Link::make('Create new car')
                ->icon('pencil')
                ->route('platform.car.edit'),
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
            CarListLayout::class
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove($id)
    {
        $car = Car::find($id);
        $car->delete();

        Alert::info(__('You have successfully deleted the car.'));

        return redirect()->route('platform.cars');
    }
}
