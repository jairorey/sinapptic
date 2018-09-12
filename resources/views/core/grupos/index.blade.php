@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Lista de Grupos</span>
</header>
@include('core.grupos.components.table')
@stop