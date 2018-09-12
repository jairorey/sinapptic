<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class grupos extends Model
{
	protected $table = 'grupos';
    protected $fillable = [
        'name',
        'institucion_id'
    ];

    public function instituciones()
    {
        return $this->belongsTo('Sinapptic\instituciones','institucion_id');
    }
}
