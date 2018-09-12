<?php

namespace Sinapptic;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class users extends Model implements AuthenticatableContract,
                                    AuthorizableContract,
                                    CanResetPasswordContract
{
    use Authenticatable, Authorizable, CanResetPassword;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'identity', 
        'name', 
        'lastname', 
        'nick',
        'avatar',
        'cargo_id',
        'departamento_id', 
        'titulo_id',
        'cuenta_bancaria_id',
        'password', 
        'born', 
        'sex', 
        'address1', 
        'address2', 
        'cell', 
        'phone', 
        'email', 
        'ext', 
        'active'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = ['password', 'remember_token'];

    public function departamento()
    {
        return $this->belongsTo('Sinapptic\departamentos','departamento_id');
    }

    public function cargo()
    {
        return $this->belongsTo('Sinapptic\cargos','cargo_id');
    }

    public function partida()
    {
        return \DB::table('partidas')
                ->where('partidas.departamento_id','=',\DB::RAW($this->departamento_id))
                ->first();
    }

    public function cuenta_bancaria()
    {
        return $this->belongsTo('Sinapptic\cuentas_bancarias','cuenta_bancaria_id');
    }

    public function isAdmin() {
        return $this->email == 'admin@congope.gob.ec';
    }

    public function isAuthor(Post $post) {
        return $this->id == $post->user_id;
    }

    public function getEmisor(Aut_solicitudes $autorizacion) {
        return $this->id == $autorizacion->user_id;
    }    

    public function getSuperior() {
        return \DB::table('users')
            ->select('users.id','identity','users.name','users.lastname')
            ->join('departamentos', function ($join) {
                $join->on('users.departamento_id','=', 'departamentos.id')
                    ->where('departamentos.id','=', $this->departamento_id);
            })
            ->join('cargos', function ($join) {
                $join->on('users.cargo_id','=', 'cargos.id')
                    ->where('cargos.nivel','=',2);
            })
            ->first();
    }

    public function getDirectorEjecutivo() {
        return \DB::table('users')
            ->select('users.id','identity','users.name','users.lastname')
            ->join('cargos', function ($join) {
                $join->on('users.cargo_id','=', 'cargos.id')
                    ->where('cargos.nivel','=',3);
            })
            ->first();
    }

    public function getFullNameAttribute()
    {
        if ($this->id) {
            $fullName = $this->name;
            if ($this->lastname) {
                $fullName .= ' ' . $this->lastname;
            }
            return $fullName;
        }
        return null;
    }

    public function getInicialesAttribute()
    {
        if ($this->id) {
            $iniciales = substr($this->name, 0,1) . substr($this->lastname, 0,1);
            return $iniciales;
        }
        return null;
    }
}
