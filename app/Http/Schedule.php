<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
class Schedule extends Authenticatable
{
    protected $table = "schedule";
    use SoftDeletes;
}
