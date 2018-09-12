<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog_posts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('departamento_id')->unsigned();
            $table->foreign('departamento_id')->references('id')->on('departamentos');
            $table->string('title',250);
            $table->string('subtitle',250);
            $table->longtext('content');
            $table->string('image')->nullable();
            $table->integer('type');
            $table->integer('status');
            $table->integer('order');
            $table->longtext('url')->nullable();
            $table->string('source',250)->nullable();
            $table->longtext('url_source')->nullable();
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
        Schema::drop('blog_posts');
    }
}
