<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class departamentos extends Model
{
	protected $table = 'departamentos';
    protected $fillable = [
        'name', 
        'institucion_id', 
        'email', 
        'abbreviation'
    ];

    public function institucion()
    {
        return $this->belongsTo('Sinapptic\instituciones','institucion_id');
    }
}
