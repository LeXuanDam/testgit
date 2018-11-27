<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Company extends Model
{
    use SoftDeletes;
    protected $table = 'company';
    public function user()
    {
        return $this->belongsTo('App\User', 'director', 'id');
    }
}
