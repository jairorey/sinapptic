@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Sistema</li>
        <li class="active">Usuarios</li>
    </ul>
    @include('layouts.errors')
    @include('_modals')
    <section class="panel panel-default">
        <header class="panel-heading">
            Lista de Posts
            <span class="pull-right">
                <a type="button" class="btn btn-default btn-xs" href="{{route('blog.create')}}"><i class="fa fa-plus-square"></i> Nuevo Post</a>
            </span>
            <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
        </header>
        @include('blog.partials._table')

    </section>
@stop