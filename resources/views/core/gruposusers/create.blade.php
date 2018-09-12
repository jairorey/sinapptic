@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in" xmlns="http://www.w3.org/1999/html">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Sistema</li>
        <li class="active">Asignaciones a Grupos</li>
    </ul>
    <div class="row">
        <div class="col-sm-6">
            {!! Form::open(array('url' => 'core/grupos/store', 'method' => 'POST', 'role' =>'form')) !!}
                <section class="panel panel-default">
                    <header class="panel-heading">
                        <span class="h4">Asignar grupos a usuarios</span>
                    </header>
                    <div class="panel-body">
                        @include('core.gruposusers.components.fields')
                        @include('core.gruposusers.components.table')
                    </div>
                    <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-success">Ingresar</button>
                        <a class="btn btn-default" href="{{ URL::previous() }}">Cancelar</a>
                    </footer>
                </section>
            {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop