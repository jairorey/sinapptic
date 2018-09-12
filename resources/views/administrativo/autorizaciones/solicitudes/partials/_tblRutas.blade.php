@if (isset($objRutas))
{{ csrf_field() }}
<table id="tblRutas" class="table table-striped table-bordered table-condensed" style="font-size: 0.9em">
<thead>

	<tr class="info">
		<th rowspan="2"><span class='glyphicon glyphicon-tags'></span></th>
		<th rowspan="2">Tipo de Transporte</th>
		<th rowspan="2">Nombre</th>
		<th rowspan="2">Ruta</th>
		<th colspan="2">Salida</th>
		<th colspan="2">Llegada</th>
	</tr>
	<tr class="info">
		<th>Fecha Origen</th>
		<th>Hora Origen</th>
		<th>Fecha Destino</th>
		<th>Hora Destino</th>
	</tr>
</thead>
<tbody>
	@foreach ($objRutas as $ruta)
	<tr>
		<td>
			<a class="delruta btn btn-xs" onclick="delRuta()"><span class="glyphicon glyphicon-remove"></span></a>
		</td>
		<td>{{ $ruta->tipo_transporte }}</td>
		<td>{{ $ruta->referencia }}</td>
		<td>
		{{ $ruta->ciudad_origen_id == 25 ? $ruta->ciudad_origen_otro : $ruta->ciudad_origen->name }}
		{{ ' - ' }}
		{{ $ruta->ciudad_destino_id == 25 ? $ruta->ciudad_destino_otro : $ruta->ciudad_destino->name }}
		</td>
		<td>{{ $ruta->fecha_origen }}</td>
		<td>{{ $ruta->hora_origen }}</td>
		<td>{{ $ruta->fecha_destino }}</td>
		<td>{{ $ruta->hora_destino }}</td>
	</tr>
	@endforeach
</tbody>
</table>
@endif