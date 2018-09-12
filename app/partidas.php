<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class partidas extends Model
{
    protected $table = 'partidas';
    protected $fillable = [
        'numero', 
        'departamento_id', 
        'type'
    ];
}
