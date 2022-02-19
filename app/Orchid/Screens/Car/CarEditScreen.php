<?php

namespace App\Orchid\Screens\Car;

use App\Models\Car;
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
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class CarEditScreen extends Screen
{
    /**
     * Display header name.
     *
     * @var string
     */
    public $name = 'Creating a new car';

    /**
     * @var bool
     */
    public $exists = false;

    /**
     * Query data.
     *
     * @param Car $car
     *
     * @return array
     */
    public function query(Car $car): array
    {
        $this->exists = $car->exists;

        if ($this->exists) {
            $this->name = __('Edit car');
        }

        return [
            'car' => $car,
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
            Button::make('Create car')
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
                        Select::make('car.manufacturer_id')
                            ->title(__('Manufacturer'))
                            ->required()
                            ->fromModel(Manufacture::class, 'name', 'id'),
                        Select::make('car.mark_id')
                            ->title(__('Mark'))
                            ->required()
                            ->fromModel(Mark::class, 'name', 'id'),
                    ]),
                ]),
                Layout::rows([
                    PictureMini::make('car.picture')
                        ->width(500)
                        ->height(300)
                        ->targetRelativeUrl()                  
                ])
            ]),
            Layout::columns([
                Layout::rows([
                    Group::make([
                        Input::make('car.vin')
                            ->required()
                            ->title(__('VIN')),
                        Select::make('car.fuel_id')
                            ->title(__('Fuel'))
                            ->required()
                            ->fromModel(Fuel::class, 'name', 'id'),
                    ]),
                    Group::make([
                        Input::make('car.engine_capacity')
                            ->required()
                            ->type('number')
                            ->min(1)
                            ->max(15)
                            ->step(0.01)
                            ->title(__('Engine capacity')),
                        Input::make('car.production_year')
                            ->required()
                            ->type('number')
                            ->min(1970)
                            ->max(2022)
                            ->title(__('Production year')),
                    ]),
                    Group::make([
                        Input::make('car.price')
                            ->required()
                            ->type('number')
                            ->min(0.1)
                            ->step(0.01)
                            ->title(__('Price')),
                        Select::make('car.country_id')
                            ->title(__('Country'))
                            ->required()
                            ->fromModel(Country::class, 'name', 'id'),
                    ]),
                ]),
                Layout::rows([])->canSee(false)
            ]),


        ];
    }

    /**
     * @param Car $car
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Car $car, Request $request)
    {
        $carData = $request->get('car');
        $picture = $request->get('car')['picture'] ?? null;

        //Если мы не загрузили картинку, добавляем дефолтную
        if(empty($picture)) {
            $url = Storage::url('car.png');
            $carData['picture'] = $url;
        }

        $car->fill($carData)->save();

        Alert::info(__('You have successfully created an car.'));

        return redirect()->route('platform.cars');
    }

    /**
     * @param Car $car
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Car $car)
    {
        $car->delete();

        Alert::info(__('You have successfully deleted the car.'));

        return redirect()->route('platform.cars');
    }
}
