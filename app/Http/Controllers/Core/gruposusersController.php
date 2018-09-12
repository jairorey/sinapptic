<?php

namespace Sinapptic\Http\Controllers\Core;

use Sinapptic\users;
use Sinapptic\roles;
use Sinapptic\grupos;
use Sinapptic\grupos_users;

use Illuminate\Http\Request;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

use Yajra\Datatables\Datatables;

class gruposusersController extends Controller
{
    public function getIndex()
    {
        return view('core.gruposusers.index');
    }

    public function getTblGruposusers(Request $request)
    {
        $gruposusers = grupos_users::all();
        return Datatables::of($gruposusers)
            ->removeColumn('id')
            ->setRowId('id')
            ->addColumn('action', function ($grupouser) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem'  href='#' data-target='#divUpdateActive' data-id='".$grupouser->id."' data-nick='".$grupouser->grupo."' data-toggle='modal'>Activar/Inactivar</a>
                    </li>
                </ul>
            </div>";
            })
            ->editColumn('active', function($grupouser) {
                if($grupouser->active == 0)
                    return "<span class='fa fa-circle text-default'></span>";
                else
                    return "<span class='fa fa-circle text-info'></span>";
            })
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getCreate()
    {
        $objUsers = users::lists('name', 'id');
        $objGruposUsers = \DB::table('grupos_users')
            ->select('grupo_id','user_id','active','id')->get();
        //$objGruposUsers = grupos_users::lists('grupo_id','user_id','active','id');
        //$objTitulos = titulos::lists('name','id');

        return view('core.gruposusers.create', compact('objUsers','objGruposUsers'));
    }

    public function getTblAjaxgxu(Request $request)
    {
      if ($request->ajax()) {
        return view('core.users.components.tblgruposuser',
            [
                'gruposporusuario' => grupos_users::where('user_id',$request["id"])->get()
            ]
        );
      }
    }

    public function getGruposusers()
    {
        return view('core.users.components.tblgruposuser',
            [
                'gruposporusuario' => grupos_users::where('user_id',$request["id"])->get()
            ]);
       
    }

    public function getAsignargrupo()
    {
        return view('core.users.components.gruposusers',
            [
                'grupos' => grupos::lists('name','id')
            ]);
       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function postStore(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
