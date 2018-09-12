@extends('layouts.master')
@section('content')
<section class="panel panel-default">
    <header class="panel-heading">
        Lista de Departamentos
        <span class="pull-right">
            <a type="button" class="btn btn-default btn-xs" href="{{url('core/departamentos/create')}}"><i class="fa fa-plus-square"></i> Nuevo Registro</a>
        </span>
        <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
    </header>
    @include('core.departamentos.components.table')
</section>
@stop