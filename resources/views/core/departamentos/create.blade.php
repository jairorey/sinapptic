@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span class="fa fa-list-alt"></span><span> Creación de Departamentos</span>
</header>
<div class="panel-body">
    {!! Form::open(array('url' => 'core/departamentos/store', 'method' => 'POST', 'role' =>'form')) !!}
        @include('core.departamentos.components.fields')
        <footer class="panel-footer bg-light lter">
        
        <div class="btn-actions">
            <button type="submit" class="btn btn-success">Ingresar</button>
            <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
        </div>
        </footer>
    {!! Form::close() !!}
</div>
@stop