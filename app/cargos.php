<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class cargos extends Model
{
	protected $table = 'cargos';
    protected $fillable = [
        'name', 
        'grado', 
        'nivel', 
        'descripcion'
    ];
}
