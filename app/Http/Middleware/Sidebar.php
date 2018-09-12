<?php

namespace Sinapptic\Http\Middleware;

use Closure;

class Sidebar
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    public $sidebar;

    public function __construct()
    {

        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.icon')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->where('aplicativos.url',\Request::segments()[0])
            ->get();

        foreach($objPanel as $panel) :
            $this->sidebar .= "<li>
                <a href='#'><i class='$panel->icon'></i> $panel->panel_opcion <span class='fa fa-chevron-down'></span></a>
                <ul class='nav child_menu'>";
            $objOpciones = \DB::table('opciones')
                ->select('opciones.id as opcion_id','opciones.name as opcion','opciones.url as url')
                ->join('panel_opciones','opciones.panel_opcion_id','=','panel_opciones.id')
                ->where('panel_opciones.id',$panel->panel_opcion_id)
                ->get();
            foreach ($objOpciones as $opcion) :
                $this->sidebar .= "<li><a href='".url($opcion->url)."'>".$opcion->opcion."</a></li>";
            endforeach;
            $this->sidebar .= "</ul></li>";
        endforeach;
    }

    public function handle($request, Closure $next)
    {
        return $next($request);
    }
}
