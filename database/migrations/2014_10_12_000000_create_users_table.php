<?php

use Illuminate\Support\Facades\Schema;
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
            $table->string('name',64);
            $table->string('email',100);
            $table->string('password',255);
            $table->smallInteger('level');
            $table->date('birthday');
            $table->string('avatar',255);
            $table->string('phone',30);
            $table->string('address',255);
            $table->smallInteger('gender')->default(1);
            $table->integer('facebook_id');
            $table->integer('line_id');
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
