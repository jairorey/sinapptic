<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAutSolicitudesTransportesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aut_solicitudes_transportes', function (Blueprint $table) {
            $table->increments('id');
            $table->enum('tipo_transporte',['Terrestre','Aereo']);
            $table->integer('solicitud_id')->unsigned();
            $table->foreign('solicitud_id')->references('id')->on('aut_solicitudes');
            $table->string('rerefencia',15)->nullable();
            $table->integer('ciudad_origen_id')->unsigned();
            $table->foreign('ciudad_origen_id')->references('id')->on('ciudades');
            $table->integer('ciudad_destino_id')->unsigned();
            $table->foreign('ciudad_destino_id')->references('id')->on('ciudades');
            $table->date('fecha_salida');
            $table->time('hora_salida');
            $table->date('fecha_llegada');
            $table->time('hora_llegada');
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
        Schema::drop('aut_solicitudes_transportes');
    }
}
