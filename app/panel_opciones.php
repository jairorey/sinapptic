<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class panel_opciones extends Model
{
    protected $table = 'panel_opciones';
    protected $fillable = [
        'name', 
        'aplicativo_id',
        'url',
        'icon', 
        'order'
    ];

    public function aplicativo()
    {
        return $this->belongsTo('Sinapptic\aplicativos','aplicativo_id');
    }
}
