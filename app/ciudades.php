<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class ciudades extends Model
{
    protected $table = 'ciudades';
    protected $fillable = [
        'name',
        'provincia_id'
    ];
}
