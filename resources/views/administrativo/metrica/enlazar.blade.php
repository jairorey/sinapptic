@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Enlazar Usuarios del Sistema con Cuentas de Acceso Biometrico</span>
</header>
  <div class="panel-body">
    <div class="form-group pull-in clearfix">
    <div class="col-sm-3">
          {!! Form::label('asistencias', 'Usuario Biometrico') !!}
          {!! Form::select('asistencias', $asistNums, null, array('class' => 'form-control'))!!}
      </div>
      <div class="col-sm-1">
        <div class="form-group"><br/>
          {!! Form::button('Enlazar', array('class' => 'form-control btn btn-success')) !!}
        </div>
      </div>
      <div class="col-sm-3">
          {!! Form::label('users', 'Usuario Sistema') !!}
          {!! Form::select('users', $users, null, array('class' => 'form-control'))!!}
      </div>
    </div>
</div>
@stop