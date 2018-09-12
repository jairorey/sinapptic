@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Sistema</li>
        <li class="active">Asignaciones a Grupos</li>
    </ul>
    @include('layouts.errors')
    @include('core.grupos.components.modals')
    <section class="panel panel-default">
        <header class="panel-heading clearfix">
            Lista de asignaciones a grupos
            <div class="btn-group pull-right">
                <a class="btn btn-sm btn-info" href="{{url('core/gruposusers/create')}}"><i class="fa fa-plus-square"></i> Nuevo Registro</a>
            </div>
            <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
        </header>
        @include('core.gruposusers.components.table')

    </section>
@stop