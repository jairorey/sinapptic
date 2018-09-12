<?php

namespace Sinapptic\Http\Middleware;

use Closure;

class Auth_Modulos
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        switch ($this->auth->user()->rolid) {
            case '1':
                # administrativo
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
