<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePanelOpcionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('panel_opciones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('aplicativo_id')->unsigned();
            $table->foreign('aplicativo_id')->references('id')->on('aplicativos');
            $table->string('description',100)->nullable();
            $table->string('icon',100)->default('icons/default.ico');
            $table->smallInteger('order')->default(1);
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
        Schema::drop('panel_opciones');
    }
}
