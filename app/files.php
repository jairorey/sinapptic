<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class files extends Model
{
    protected $table = 'files';
    protected $fillable = [ 
        'name',
        'user_id',
        'detail',
        'filetype',
        'estado',
        'token'
    ];

    public function Users()
    {
        return $this->belongsTo('Sinapptic\users','user_id');
    }
}
