@if($cronograma)
	@include('planificacion.siseftran.planinstitucional.proyectos.cronograma.create')
	@include('planificacion.siseftran.planinstitucional.proyectos.cronograma.edit')
	<table class="tbl_cronograma table table-striped projects">
		<thead>
		<tr class="info">
			<th rowspan="2">
				<button class="btn btn-default btn-xs" data-toggle="modal" data-target="#modal-create-cronograma" title="Nueva Secuencia">
					<i class="fa fa-plus"></i>
				</button>
			</th>
			<th rowspan="2">Clasificador</th>
			<th rowspan="2">Id. Actividad</th>
			<th rowspan="2">Nombre</th>
			<th rowspan="2">Valor Inicial</th>
			<th rowspan="2">Fuente Finan.</th>
			<th colspan="4">PLANIF. EJE. FINANCERA</th>
			<th colspan="4">PLANIF. EJE. FISICA</th>
		</tr>
		<tr class="info">
			<th>Trim. 1</th>
			<th>Trim. 2</th>
			<th>Trim. 3</th>
			<th>Trim. 4</th>
			<th>Trim. 1</th>
			<th>Trim. 2</th>
			<th>Trim. 3</th>
			<th>Trim. 4</th>
		</tr>
		</thead>
	    <tbody>
		    @foreach($cronograma as $c)
		    <tr>
				<td>
					<button class="btn btn-default btn-xs edit-cronograma" data-toggle="modal" data-target="#modal-edit-cronograma" title="Reformar" data-id="{{$c->codigo_clasificador}}">
						<i class="fa fa-pencil"></i>
					</button>
				</td>
		        <td class="codigo_clasificador">{{$c->codigo_clasificador}}</td>
		        <td class="id_act_sup">{{$c->id_act_sup}}</td>
		        <td class="nombre">{{$c->nombre}}</td>
		        <td class="vinicial">{{$c->valor_inicial}}</td>
		        <td class="ffinanciera">{{$c->fuente_fin}}</td>
		        <td class="grupo1">{{$c->grupo1}}</td>
		        <td class="grupo2">{{$c->grupo2}}</td>
		        <td class="grupo3">{{$c->grupo3}}</td>
		        <td class="grupo4">{{$c->grupo4}}</td>
				<td class="project_progress">
					<div class="progress progress_sm">
						<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="{{$c->grupofis1}}"></div>
					</div>
					<small>{{$c->grupofis1}}%</small>
				</td>
				<td class="project_progress">
					<div class="progress progress_sm">
						<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="{{$c->grupofis2}}"></div>
					</div>
					<small>{{$c->grupofis2}}%</small>
				</td>
				<td class="project_progress">
					<div class="progress progress_sm">
						<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="{{$c->grupofis3}}"></div>
					</div>
					<small>{{$c->grupofis3}}%</small>
				</td>
				<td class="project_progress">
					<div class="progress progress_sm">
						<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="{{$c->grupofis4}}"></div>
					</div>
					<small>{{$c->grupofis4}}%</small>
				</td>
		    </tr>
		    @endforeach
	    </tbody>
	</table>
@else
	<p>No se encontraron cronogramas atadas a este proyecto...</p>
@endif

<script>
	$(document).ready(function() {

		$('.chart').easyPieChart({
			easing: 'easeOutBounce',
			lineWidth: '6',
			barColor: '#75BCDD',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
		var chart = window.chart = $('.chart').data('easyPieChart');
		$('.js_update').on('click', function() {
			chart.update(Math.random() * 200 - 100);
		});

		//hover and retain popover when on popover content
		var originalLeave = $.fn.popover.Constructor.prototype.leave;
		$.fn.popover.Constructor.prototype.leave = function(obj) {
			var self = obj instanceof this.constructor ?
					obj : $(obj.currentTarget)[this.type](this.getDelegateOptions()).data('bs.' + this.type);
			var container, timeout;

			originalLeave.call(this, obj);

			if (obj.currentTarget) {
				container = $(obj.currentTarget).siblings('.popover');
				timeout = self.timeout;
				container.one('mouseenter', function() {
					//We entered the actual popover – call off the dogs
					clearTimeout(timeout);
					//Let's monitor popover content instead
					container.one('mouseleave', function() {
						$.fn.popover.Constructor.prototype.leave.call(self, self);
					});
				});
			}
		};

		$('body').popover({
			selector: '[data-popover]',
			trigger: 'click hover',
			delay: {
				show: 50,
				hide: 400
			}
		});
	});
</script>