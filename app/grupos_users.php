<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class grupos_users extends Model
{
    protected $table = 'grupos_users';
    protected $fillable = [
        'grupo_id',
        'user_id',
        'active'
    ];

    public function grupos()
    {
        return $this->belongsTo('Sinapptic\grupos','grupos_id');
    }

    public function users()
    {
        return $this->belongsTo('Sinapptic\users','users_id');
    }
}
