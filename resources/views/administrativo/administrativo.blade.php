@extends('layouts.master')
@section('sidebar')
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                @if (Auth::check())
                <li>
                    <a href="#"><i class="fa fa-film fa-fw"></i> Documento<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{!!URL('documentos')!!}"><i class='fa fa-list-ol fa-fw'></i> Listar</a>
                        </li>
                        <li>
                            <a href="{!!URL::to('/pelicula/create')!!}"><i class='fa fa-plus fa-fw'></i> Agregar</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-child fa-fw"></i> Asignacion<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{!!URL::to('/genero/create')!!}"><i class='fa fa-plus fa-fw'></i> Agregar</a>
                        </li>
                        <li>
                            <a href="{!!URL::to('/genero')!!}"><i class='fa fa-list-ol fa-fw'></i> Generos</a>
                        </li>
                    </ul>
                </li>
                
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i> Usuario<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{!!URL::to('/users/create')!!}"><i class='fa fa-plus fa-fw'></i> Agregar</a>
                        </li>
                        <li>
                            <a href="{!!URL::to('/users')!!}"><i class='fa fa-list-ol fa-fw'></i> Usuarios</a>
                        </li>
                    </ul>
                </li>
                @endif
            </ul>
        </div>
    </div>
@endsection