<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentosExternosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('documentos_externos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('institucion_id');
            $table->string('referencia');
            $table->string('name_remitente');
            $table->string('user_id');
            $table->string('asunto');
            $table->string('date_recibido');
            $table->string('date_emitido');
            $table->string('observacion')->nullable();
            $table->integer('active')->default(1);

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
        Schema::drop('documentos_externos');
    }
}
