<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class aut_solicitudes extends Model
{
    protected $table = 'aut_solicitudes';
    protected $fillable = [
        'tipo_solicitud', 
        'numero_solicitud',
        'fecha_solicitud',
        'partida_id', 
        'user_id',
        'ciudad_id',
        'ciudad_otro',
        'fecha_salida',
        'hora_salida',
        'fecha_retorno',
        'hora_retorno',
        'integrantes',
        'descripcion',
        'filename'
    ];

    public function partida()
    {
        return $this->belongsTo('Sinapptic\partidas','partida_id');
    }

    public function usuario()
    {
        return $this->belongsTo('Sinapptic\users','user_id');
    }

    public function ciudad()
    {
        return $this->belongsTo('Sinapptic\ciudades','ciudad_id');
    }

    public function historico()
    {
        $hist = \DB::table('aut_solicitudes_historicos')
            ->where('aut_solicitudes_historicos.solicitud_id','=', \DB::RAW($this->id))
            ->where('aut_solicitudes_historicos.created_at', '=', \DB::RAW('(select max(b.created_at) from aut_solicitudes_historicos b)'))
            ->first();
        if(isset($hist))
            return $hist;
        else
            return 0;
    }

    public function countTransporte()
    {
        return \DB::table('aut_solicitudes_transportes')
            ->select(\DB::RAW('count(*) as cantidad'))
            ->where('aut_solicitudes_transportes.solicitud_id', '=', \DB::RAW($this->id))
            ->first();
    }

    public function setFilenameAttribute($value)
    {
        $name = str_replace('-', '', $value);
        $this->attributes['filename'] = $name;
        //\Storage::disk('aut_sol')->put($name, \File::get($value));
    }
}
