@extends('layouts.master')
@section('content')
<section class="panel panel-default">
	<header class="panel-heading font-bold">
	    <span>Editar Usuario</span>
	</header>
	<div class="panel-body">
	    {!! Form::model($user,array('url' => array('core/users/update',$user), 'method' => 'PUT', 'role' =>'form', 'class' => 'form-horizontal')) !!}
	        @include('core.users.components.fields', ['edit' => true])
	        <footer class="panel-footer text-right bg-light lter">
	            <button type="submit" class="btn btn-success">Modificar</button>
	            <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
	        </footer>
	    {!! Form::close() !!}
	</div>
</section>
@stop
