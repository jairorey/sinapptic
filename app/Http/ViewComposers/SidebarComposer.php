<?php

namespace Sinapptic\Http\ViewComposers;

use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\URL;
use Sinapptic\panel_opciones;

class SidebarComposer
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $sidebar;
    protected $breadcrumb;

    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()
    {
        // Dependencies automatically resolved by service container...
        //$this->users = $users;
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {

        $objPanel = \DB::table('panel_opciones')
            ->select('panel_opciones.id as panel_opcion_id','panel_opciones.name as panel_opcion','panel_opciones.url','panel_opciones.icon','panel_opciones.order')
            ->join('aplicativos','panel_opciones.aplicativo_id','=','aplicativos.id')
            ->join('accesos','panel_opciones.id','=','accesos.panel_opcion_id')
            ->join('grupos_users','accesos.grupo_id','=','grupos_users.grupo_id')
            ->join('users','grupos_users.user_id','=','users.id')
            ->where('aplicativos.url', \Request::segment(1))
            ->where('users.id', \Auth::user()->id )
            ->orderBy('panel_opciones.order')
            ->get();

        $this->sidebar = '
        <li class="active"><a href="'.url(\Request::segment(1)).'" class="active"><i class="fa fa-home icon">
              <b class="bg-info"></b>
            </i>
            <span>Workset</span>
          </a>
        </li>';

        foreach($objPanel as $panel) :
            $this->sidebar .= "<li>
                <a href='#$panel->panel_opcion'><i class='$panel->icon icon'>
                <b class='bg-success'></b>
                </i>
                <span class='pull-right'>
                  <i class='fa fa-angle-down text'></i>
                  <i class='fa fa-angle-up text-active'></i>
                </span>
                <span>$panel->panel_opcion</span>
                </a>
                <ul class='nav lt'>";
            $objOpciones = \DB::table('opciones')
                ->select('opciones.id as opcion_id','opciones.name as opcion','opciones.url as url')
                ->join('panel_opciones','opciones.panel_opcion_id','=','panel_opciones.id')
                ->where('panel_opciones.id',$panel->panel_opcion_id)
                ->orderBy('opciones.order')
                ->get();

            foreach ($objOpciones as $opcion) :
                $this->sidebar .= "<li><a href='".url($opcion->url)."'>
                                        <i class='fa fa-angle-right'></i>
                                        <span>".$opcion->opcion."</span>
                                    </a>
                                    </li>";
            endforeach;
            $this->sidebar .= "</ul></li>";
        endforeach;

        $this->breadcrumb = '<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
            <li><a href="index.html"><i class="fa fa-home"></i> Inicio</a></li>
            <li><a href="applist"> Aplicaciones</a></li>
            <li><a>'.\Request::segment(1).'</a></li>
            <li class="active"><a>'.\Request::segment(2).'</a></li>
        </ul>';

        $view->with('sidebar', $this->sidebar)->with('breadcrumb',$this->breadcrumb);
    }
}