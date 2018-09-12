@if($indicadores)
	@include('planificacion.siseftran.planinstitucional.proyectos.indicadores.create')
	@include('planificacion.siseftran.planinstitucional.proyectos.indicadores.edit')
	<table class="table table-striped">
		<thead>
			<tr class="info">
				<th>
					<button class="btn btn-default btn-xs" data-toggle="modal" data-target="#modal-create-indicador" title="Nueva Secuencia">
						<i class="fa fa-plus"></i>
					</button>
				</th>
				<th>Secuencia</th>
				<th style="width:90%">Indicador</th>
			</tr>
		</thead>
		<tbody>
			@foreach($indicadores as $indicador)
			<tr>
				<td>
					<button class="btn btn-default btn-xs edit-indicador" data-toggle="modal" data-target="#modal-edit-indicador" title="Reformar" data-indicador="{{$indicador->descripcion}}">
						<i class="fa fa-pencil"></i>
					</button>
				</td>
				<td>{{$indicador->secu}}
				</td>
				<td>{{$indicador->descripcion}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
@else
	<p><span class="fa fa-warning"></span> No se encontraron indicadores atados a este proyecto...</p>
@endif