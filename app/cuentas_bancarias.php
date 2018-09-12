<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class cuentas_bancarias extends Model
{
    protected $table = 'cuentas_bancarias';
    protected $fillable = [
        'institucion_id',
        'tipo_cuenta',
        'numero'
    ];

    public function institucion()
    {
        return $this->belongsTo('Sinapptic\instituciones','institucion_id');
    }
}
