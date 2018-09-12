<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class asistencias extends Model
{
    protected $table = "asistencias";

    protected $fillable = [
        'numca', 
        'empleado', 
        'dia', 
        'fecha',
        'regentrada',
        'regsalida', 
        'ausente'
    ];
}
