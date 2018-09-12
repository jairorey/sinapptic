@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Crear Usuario</span>
	</header>
	<div class="panel-body">
	    {!! Form::open(array('url' => 'core/users/store', 'method' => 'POST', 'role' =>'form')) !!}
	        @include('core.users.components.fields')
	        <footer class="panel-footer text-right bg-light lter">
	        <button type="submit" class="btn btn-success">Ingresar</button>
	        <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
	        </footer>
	    {!! Form::close() !!}
	</div>
</section>
@stop