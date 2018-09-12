@extends('layouts.masterplus')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <header class="header bg-light dker bg-gradient">
        <p>Lineas de Financiamiento Disponibles</p>
    </header>
    @include('layouts.errors')
    @include('proyectos.lineaFin.components.modals')
    <section class="panel panel-default">
        
        @include('proyectos.lineaFin.components.table')

    </section>
@stop