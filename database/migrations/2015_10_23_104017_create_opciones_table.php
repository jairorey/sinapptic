<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOpcionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('opciones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('panel_opcion_id')->unsigned();
            $table->foreign('panel_opcion_id')->references('id')->on('panel_opciones');
            $table->string('url');
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
        Schema::drop('opciones');
    }
}
