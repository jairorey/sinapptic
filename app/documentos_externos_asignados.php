<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class documentos_externos_asignados extends Model
{
    protected $table = 'documentos_externos_asignados';
    protected $fillable = [
        'documento_externo_id',
        'user_id'
    ];
}
