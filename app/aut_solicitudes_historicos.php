<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class aut_solicitudes_historicos extends Model
{
    protected $table = 'aut_solicitudes_historicos';
    protected $fillable = [
        'solicitud_id', 
        'emisor_id', 
        'receptor_id',
        'estado',
        'nota'
    ];

    public function solicitud()
    {
        return $this->belongsTo('Sinapptic\solicitudes','solicitud_id');
    }

    public function emisor()
    {
        return $this->belongsTo('Sinapptic\users','emisor_id');
    }

    public function receptor()
    {
        return $this->belongsTo('Sinapptic\users','receptor_id');
    }
}
