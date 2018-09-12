@extends('layouts.master')
@section('content')
<header class="panel-heading font-bold">
    <span>Tablero de Metricas de Asistencia de Usuario</span>
</header>
<div class="panel-body">
    <div id="flot-1ine" style="height:250px"></div>
    <footer class="panel-footer bg-white">
      <div class="row text-center no-gutter">
        <div class="col-xs-3 b-r b-light">
          <p class="h3 font-bold m-t">28</p>
          <p class="text-muted">Dias Trabajados</p>
        </div>
        <div class="col-xs-3 b-r b-light">
          <p class="h3 font-bold m-t">1</p>
          <p class="text-muted">Dias con Permiso</p>
        </div>
        <div class="col-xs-3 b-r b-light">
          <p class="h3 font-bold m-t">1</p>
          <p class="text-muted">Dias Injustificados</p>
        </div>
        <div class="col-xs-3">
          <p class="h3 font-bold m-t">85</p>
          <p class="text-muted">Visitas</p>                        
        </div>
      </div>
    </footer>
</div>
@stop