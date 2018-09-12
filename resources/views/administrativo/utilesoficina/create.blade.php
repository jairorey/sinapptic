@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Crear Permiso</span>
</header>
{!! Form::open(array('route' => 'laboral.permiso.store', 'method' => 'POST', 'role' =>'form')) !!}
	<div class="panel-body">
		@include('administrativo.permiso.partials._fields')
	</div>
	<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success">Ingresar</button>
		<a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
	</footer>
{!! Form::close() !!}
@stop