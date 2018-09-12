<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class accesos extends Model
{
    protected $table = 'accesos';
    protected $fillable = [
        'panel_opcion_id', 
        'grupo_id',
        'active'
    ];

    public function panel_opcion()
    {
        return $this->belongsTo('Sinapptic\panel_opciones','panel_opcion_id');
    }

    public function grupo()
    {
        return $this->belongsTo('Sinapptic\grupos','grupo_id');
    }

}
