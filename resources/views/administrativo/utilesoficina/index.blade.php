@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Lista de Utiles Solicitados</span>
</header>
<div class="panel-body">
    @include('administrativo.utilesoficina.partials._table')
</div>
@stop