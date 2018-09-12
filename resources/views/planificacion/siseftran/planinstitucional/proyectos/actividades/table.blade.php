@if($actividades)
	@include('planificacion.siseftran.planinstitucional.proyectos.actividades.create')
	@include('planificacion.siseftran.planinstitucional.proyectos.actividades.edit')
	<table class="data table table-striped no-margin">
		<thead>
			<tr class="info">
				<th>
					<button class="btn btn-default btn-xs" data-toggle="modal" data-target="#modal-create-actividad" title="Nueva Secuencia">
						<i class="fa fa-plus"></i>
					</button>
				</th>
				<th>Id</th>
				<th style="width:90%">Nombre</th>
			</tr>
		</thead>
	    <tbody>
		    @foreach($actividades as $actividad)
		    <tr>
				<td>
					<button class="btn btn-default btn-xs edit-actividad" data-toggle="modal" data-target="#modal-edit-actividad" title="Reformar" data-actividad="{{$actividad->nombre}}">
						<i class="fa fa-pencil"></i>
					</button>
				</td>
		        <td>{{$actividad->id}}</td>
		        <td>{{$actividad->nombre}}</td>
		    </tr>
		    @endforeach
	    </tbody>
	</table>
@else
	<p>No se encontraron actividades atadas a este proyecto...</p>
@endif