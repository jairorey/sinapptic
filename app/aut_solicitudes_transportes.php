<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class aut_solicitudes_transportes extends Model
{
    protected $table = 'aut_solicitudes_transportes';
    protected $fillable = [
        'tipo_transporte', 
        'solicitud_id', 
        'referencia',
        'ciudad_origen_id',
        'ciudad_origen_otro',
        'ciudad_destino_id',
        'ciudad_destino_otro',
        'fecha_origen',
        'hora_orgien',
        'fecha_destino',
        'hora_destino'
    ];

    public function solicitud()
    {
        return $this->belongsTo('Sinapptic\solicitudes','solicitud_id');
    }

    public function ciudad_origen()
    {
        return $this->belongsTo('Sinapptic\ciudades','ciudad_origen_id');
    }

    public function ciudad_destino()
    {
        return $this->belongsTo('Sinapptic\ciudades','ciudad_destino_id');
    }
}
