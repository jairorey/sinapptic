<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('identity',13);
            $table->string('name',50);
            $table->string('lastname',50);
            $table->string('nick');
            $table->string('avatar')->default('default.jpg');
            $table->integer('rol_id')->unsigned();
            $table->foreign('rol_id')->references('id')->on('roles');
            $table->integer('departamento_id')->unsigned();
            $table->foreign('departamento_id')->references('id')->on('departamentos');
            $table->integer('titulo_id')->unsigned();
            $table->foreign('titulo_id')->references('id')->on('titulos');
            $table->integer('cuenta_bancaria_id')->unsigned()->nullable();
            $table->foreign('cuenta_bancaria_id')->references('id')->on('cuentas_bancarias');
            $table->string('password', 60);
            $table->date('born')->nullable();
            $table->tinyInteger('sex');
            $table->text('address1')->nullable();
            $table->text('address2')->nullable();
            $table->string('cell',15)->nullable();
            $table->string('phone',15)->nullable();
            $table->string('email',50)->nullable();
            $table->integer('ext')->unique();
            $table->integer('active')->default(1);
            $table->string('numca',5)->nullable();
            $table->rememberToken();
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
        Schema::drop('users');
    }
}
