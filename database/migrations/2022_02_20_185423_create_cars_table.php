<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars', function (Blueprint $table) {
            $table->id();
            $table->foreignId('mark_id')->references('id')->on('marks')->onDelete('cascade');
            $table->foreignId('manufacturer_id')->references('id')->on('manufactures')->onDelete('cascade');
            $table->string('vin');
            $table->foreignId('fuel_id')->references('id')->on('fuels')->onDelete('cascade');
            $table->float('engine_capacity');
            $table->year('production_year');
            $table->float('price');
            $table->foreignId('country_id')->references('id')->on('countries')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cars');
    }
}
