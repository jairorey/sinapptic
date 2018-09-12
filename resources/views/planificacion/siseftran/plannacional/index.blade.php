@extends('layouts.master')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="{{ url() }}"><i class="fa fa-home"></i> Siseftran</a></li>
        <li class="active">Plan Nacional</li>
        <li class="active">Dashboard</li>
    </ul>
    @include('layouts.errors')
    @include('planificacion.siseftran.plannacional.components.popups')
    <div class="col-md-12">
        <h3 class="text-success">Objetivos, Politicas, Estrategias y Metas Nacionales.</h3>
        <?php echo $plannacional ?>
    </div>
@stop