<?php

namespace Database\seeders;

use App\Models\Lists\Country;
use App\Models\Lists\Fuel;
use App\Models\Lists\Manufacture;
use App\Models\Lists\Mark;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = (new \Faker\Factory())::create();
        $faker->addProvider(new \Faker\Provider\Fakecar($faker));

        for($i = 0; $i < 100; $i++) {
            DB::table('marks')->insert([
                'name' => $faker->vehicleModel,
            ]);
        }

        for($i = 0; $i < 50; $i++) {
            DB::table('manufactures')->insert([
                'name' => $faker->vehicleBrand,
            ]);
        }

        DB::table('fuels')->insert([
            ['name' => 'benzine'],
            ['name' => 'gas'],
            ['name' => 'hybrid'],
            ['name' => 'electro'],
            ['name' => 'diesel'],
        ]);
        
        for($i = 0; $i < 100; $i++) {
            DB::table('countries')->insert([
                'name' => $faker->country,
            ]);
        }

        for($i = 0; $i < 50; $i++) {
            DB::table('cars')->insert([
                'picture' => Storage::url('car.png'),
                'mark_id' => Mark::inRandomOrder()->get()[0]['id'],
                'manufacturer_id' => Manufacture::inRandomOrder()->get()[0]['id'],
                'vin' => $faker->vin,
                'fuel_id' => Fuel::inRandomOrder()->get()[0]['id'],
                'engine_capacity' => $this->randomFloat(0, 10),
                'production_year' => $faker->biasedNumberBetween(1998,2017, 'sqrt'),
                'price' => $this->randomFloat(100, 10000),
                'country_id' => Country::inRandomOrder()->get()[0]['id']
            ]);
        }
        
    }

    public function randomFloat($min, $max) {
        return random_int($min, $max - 1) + (random_int(0, PHP_INT_MAX - 1) / PHP_INT_MAX );
    }
}
