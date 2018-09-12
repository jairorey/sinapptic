<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAutSolicitudesHistoricosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aut_solicitudes_historicos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('solicitud_id')->unsigned();
            $table->foreign('solicitud_id')->references('id')->on('aut_solicitudes');
            $table->integer('emisor_id')->unsigned();
            $table->foreign('emisor_id')->references('id')->on('users');
            $table->integer('receptor_id')->unsigned();
            $table->foreign('receptor_id')->references('id')->on('users');
            $table->string('filename',50)->nullable();
            $table->integer('estado');
            $table->mediumtext('nota')->nullable();
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
        Schema::drop('aut_solicitudes_historicos');
    }
}
