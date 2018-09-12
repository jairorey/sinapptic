<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class documentos_externos extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'documentos_externos';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'institucion_id',
        'referencia',
        'name_remitente',
        'user_id',
        'asunto',
        'date_recibido',
        'date_emitido',
        'observacion',
        'active'
    ];

}
