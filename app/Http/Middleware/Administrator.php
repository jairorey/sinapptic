<?php

namespace Sinapptic\Http\Middleware;

use Illuminate\Contracts\Auth\Guard;
use Closure;
use Session;

class Administrator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    protected $auth;
    public function __construct(Guard $auth)
    {
        $this->auth = $auth;
    }

    public function handle($request, Closure $next)
    {
        switch ($this->auth->user()->rolid) {
            case '1':
                # administrator
                break;
            case '2':
                # usuario
                break;
            case '3':
                # asistente
                break;
            case '4':
                # director
                break;
            case '5':
                # asesor
                break;
            case '6':
                # director_ejecutivo
                break;
            
            default:
                # redirect login
                break;
        }
        return $next($request);
    }
}
