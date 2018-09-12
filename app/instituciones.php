<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class instituciones extends Model
{
    protected $table = 'instituciones';

    protected $fillable = [
    	'name',
    	'ciudad_id',
    	'institucion_tipo_id',
    	'business_name',
    	'ruc',
    	'address',
    	'phone',
    	'email'
    ];

    public function grupos()
    {
        return $this->hasMany('Sinapptic\grupos','institucion_id');
    }

    public function ciudades()
    {
        return $this->belongsTo('Sinapptic\ciudades','ciudad_id');
    }

    public function instituciones_tipo()
    {
        return $this->belongsTo('Sinapptic\instituciones_tipo','institucion_tipo_id');
    }

}
