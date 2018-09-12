<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitucionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('instituciones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('ciudad_id')->nullable()->unsigned();
            $table->foreign('ciudad_id')->references('id')->on('ciudades');
            $table->integer('institucion_tipo_id')->unsigned();
            $table->foreign('institucion_tipo_id')->references('id')->on('instituciones_tipos');
            $table->string('business_name',100)->nullable();
            $table->string('ruc',20)->nullable();
            $table->string('address',100)->nullable();
            $table->string('phone',15)->nullable();
            $table->string('email',50)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('instituciones');
    }
}
