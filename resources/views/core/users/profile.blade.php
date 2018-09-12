@extends('layouts.master')
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Perfil</li>
    </ul>
    @include('layouts.errors')
    @include('core.users.components.modals')
    <section class="panel panel-default">
        <header class="panel-heading">
            Perfil de {{ $user->nick }}
            <span class="pull-right">
                <a type="button" class="btn btn-default btn-xs" href="{{url('core/users/edit', $user->id)}}"><i class="fa fa-plus-square"></i> Editar Usuario</a>
            </span>
            <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
        </header>
        
        <div class="panel-body">
            <a href="#" class="thumb pull-left m-r">
              <img src="/uploads/avatars/{{$user->avatar}}" class="img-circle">
          </a>
          <div class="clear">
            <h3>
                {{ $user->name }} {{ $user->lastname }}
            </h3>
              <small class="block text-muted">
                Documento ID: {{$user->identity}} </br>
                Titulo: {{$user->titulo_id}} </br>
                Rol: {{$user->rol_id}} </br>
                Departamento: {{$user->departamento_id}} </br>
                Fecha de Nacimiento: {{$user->born}} </br>
                Genero: {{$user->sex}} </br>
                Direccion: {{$user->adresss1}} </br>
                Celular: {{$user->cell}} </br>
                Telefono: {{$user->phone}} </br>
                Email: {{$user->email}} </br>
                Extension: {{$user->ext}} </br>
              </small>
          </div>
      </div>

    </section>
@stop