@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Sistema</li>
        <li class="active">Grupos</li>
    </ul>
    @include('layouts.errors')
    @include('core.accesos.components.modals')
    <section class="panel panel-default">
        <header class="panel-heading">
            Lista de Grupos
            <span class="pull-right">
                <a type="button" class="btn btn-default btn-xs" href="{{url('core/accesos/create')}}"><i class="fa fa-plus-square"></i> Nuevo Registro</a>
            </span>
            <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
        </header>
        @include('core.accesos.components.table')

    </section>
@stop