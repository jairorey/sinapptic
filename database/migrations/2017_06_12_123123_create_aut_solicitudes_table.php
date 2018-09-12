<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAutSolicitudesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aut_solicitudes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tipo_solicitud',10);
            $table->string('numero_solicitud',50);
            $table->date('fecha_solicitud');
            $table->integer('partida_id')->unsigned();
            $table->foreign('partida_id')->references('id')->on('partidas');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->integer('ciudad_id')->unsigned();
            $table->foreign('ciudad_id')->references('id')->on('ciudades');
            $table->string('ciudad_otro',25)->nullable();
            $table->date('fecha_origen');
            $table->time('hora_origen');
            $table->date('fecha_destino');
            $table->time('hora_destino');
            $table->mediumtext('integrantes');
            $table->longtext('descripcion');
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
        Schema::drop('aut_solicitudes');
    }
}
