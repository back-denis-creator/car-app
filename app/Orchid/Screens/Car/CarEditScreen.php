<?php

namespace App\Orchid\Screens\Car;

use App\Models\Car;
use Illuminate\Http\Request;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
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
                        Input::make('car.name')
                            ->title(__('Name')),
                        Input::make('car.telephone')
                            ->title(__('Telephone')),
                        Input::make('car.email')
                            ->title(__('Email')),
                    ]),
                    Quill::make('car.comment')
                        ->type('text')
                        ->title(__('Comment'))
                        ->placeholder('Comment'),
                ]),
                Layout::rows([
                    Group::make([
                        Input::make('car.to_call_date')
                            ->title(__('Call date')),
                        Input::make('car.to_call_time')
                            ->title(__('Call time')),
                    ]),
                ]),
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
        $car->fill($request->get('call'))->save();

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
