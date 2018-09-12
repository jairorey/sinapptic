<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class asistencias_historico_cargas extends Model
{
    protected $table = "asistencias_historico_cargas";

    protected $fillable = [
        'mes', 
        'anio'
    ];
}
