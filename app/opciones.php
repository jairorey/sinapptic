<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class opciones extends Model
{
    protected $table = 'opciones';
    protected $fillable = [
        'name', 
        'panel_opcion_id',
        'url',
        'description',
        'icon', 
        'order'
    ];

    public function panel_opcion()
    {
        return $this->belongsTo('Sinapptic\panel_opciones','panel_opcion_id');
    }
}
