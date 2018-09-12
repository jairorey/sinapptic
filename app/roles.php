<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    protected $table = 'roles';
    protected $fillable = [
        'name',
        'description'
    ];
}
