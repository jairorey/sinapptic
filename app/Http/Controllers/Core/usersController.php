<?php

namespace Sinapptic\Http\Controllers\Core;

use Sinapptic\departamentos;
use Sinapptic\titulos;
use Sinapptic\users;
use Sinapptic\roles;
use Illuminate\Http\Request;
use Auth;

use Sinapptic\Http\Requests;
use Sinapptic\Http\Controllers\Controller;

use Yajra\Datatables\Datatables;

class usersController extends Controller
{

    public function getIndex()
    {
        return view('core.users.index');
    }

    public function getDirector()
    {
        $director = \DB::table('users')
            ->select('users.id','identity','users.name','users.lastname')
            ->join('departamentos', function ($join) {
                $join->on('users.departamento_id','=', 'departamentos.id')
                    ->where('departamentos.id','=',\Auth::User()->departamento_id);
            })
            ->join('cargos', function ($join) {
                $join->on('users.cargo_id','=', 'cargos.id')
                    ->where('cargos.id','=',3);
            })
            ->first();
        return response()->json($director);

    }

    public function getProfile()
    {
        $user = \Auth::user();
        return view('core.users.profile', compact('user'));
    }

    public function getTblUsers()
    {
        $users = users::select('users.id','identity', 'nick', 'users.name', 'lastname','departamentos.name as departamento', 'active', 'users.created_at')
            ->join('cargos','users.cargo_id','=','cargos.id')
            ->join('departamentos','users.departamento_id','=','departamentos.id');
        return Datatables::of($users)
            ->removeColumn('id')
            ->setRowId('id')
            ->addColumn('action', function ($user) {
                return "<div class='dropdown'>
                <button id='dd1' class='btn btn-xs dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                    <span class='fa fa-ellipsis-h'></span>
                </button>
                <ul class='dropdown-menu animated' role='menu' aria-labelledby='dd1'>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem' href='".url('core/users/edit', $user->id)."'>Editar</a>
                    </li>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem'  href='#' data-target='#divUpdateActive' data-id='".$user->id."' data-nick='".$user->nick."' data-toggle='modal'>Activar/Inactivar</a>
                    </li>
                    <li class='divider'></li>
                    <li role='presentation' class='dropdown'>
                        <a role='menuitem'  href='".url('core/gruposusers/asignargrupo', $user->id)."' data-target='#divAsignarGrupo' data-id='".$user->id."' data-nick='".$user->nick."' data-toggle='modal'>Asignar Grupos</a>
                    </li>
                </ul>
            </div>";
            })
            ->editColumn('active', function($user) {
                if($user->active == 0)
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
        return view('core.users.create',
            [
                'objRoles'         => roles::lists('name', 'id'),
                'objDepartamentos' => departamentos::lists('name','id'),
                'objTitulos'       => titulos::lists('name','id'),
                'user'             => Auth::user()
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function postStore(Request $request)
    {
        users::create($request->all());
        return redirect('/core/users/index')->with('messaje','store');
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
    public function getEdit($id)
    {
        return view('core.users.edit',
            [
                'objRoles'         => roles::lists('name', 'id'),
                'objDepartamentos' => departamentos::lists('name','id'),
                'objTitulos'       => titulos::lists('name','id'),
                'user'             => users::findOrFail($id)
            ]
        );
    }

    public function PostUpdateActive(Request $request)
    {
        if ($request->ajax()) {
            $user = users::findOrFail($request->input('id'));
            if ($user->active == 0)
                $user->fill(array('active' => 1));
            else
                $user->fill(array('active' => 0));
            $user->save();
            return redirect()->route('core.users.index')->with('messaje','update');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function putUpdate(Request $request, $id)
    {
        $user = users::findOrFail($id);
        $user->fill($request->all());
        $user->save();
        if(\Auth::User()->numca != 0)
            return redirect(url('core/users/index'))->with('messaje','update');
        else
            return redirect(url('/'));
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
