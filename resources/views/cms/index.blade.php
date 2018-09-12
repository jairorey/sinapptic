@extends('layouts.cms')
@section('cms')
<div class="col-md-6">
	<table class="blog">
		<tbody>
			<tr>
				<td>
					<h1 class="blog-post-title">Prefectos definen agenda de diálogos en las provincias.</h1>
					{!!Html::image('img/blog/0X4A1675.jpg','a picture',array('class'=>'img-responsive col-lg-12'))!!}
					<br />
					<p class="lead">Autoridades definieron una agenda</p>
					<p>
						En una reunión desarrollada en las instalaciones del CONGOPE, las autoridades definieron una agenda para llevar a cabo los diálogos de equidad y justicia social en cada provincia.
					</p>
				</td>
			</tr>
			<tr>
				<td>
					<h1 class="blog-post-title">Las Viceprefectas se reunierón en el CONGOPE.</h1>
					{!!Html::image('img/blog/viceprefectas.jpg','a picture',array('class'=>'img-responsive col-lg-12'))!!}
					<br />
					<p class="lead">Fortalecimiento en red de Viceprefecturas</p>
					<p>
						La reunión de Prefectas y Viceprefectas del país se realizó a fin de fortalecer la red de Viceprefecturas del Ecuador y de establecer espacios de trabajo  donde se aportó con iniciativas propositivas con la firme intención de velar por el desarrollo de cada provincia.
					</p>
				</td>
			</tr>
		</tbody>
		<!-- <nav>
			<ul class="pager">
				<li><a href="#">Anterior</a></li>
				<li><a href="#">Siguiente</a></li>
			</ul>
		</nav> -->	
	</table>	
</div><!-- /.blog-main -->
<div class="col-md-3">
	<table class="blog">
		<tbody>
				<tr>
					<td>
						<h4><strong>Premio de las Buenas Prácticas</strong></h4>
						{!!Html::image('img/interes/BPLok.jpg','a picture',array('class'=>'img-responsive col-lg-12'))!!}
						<p class="text-justify">
							Las entidades asociativas de los Gobiernos Autónomos Descentralizados invitan a participar de la VI Edición del Premio de las Buenas Prácticas Locales. La convocatoria cierra el 28 de agosto de 2015.
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<h4><strong>Dr. Edwin Miño cumple agenda de medios en Cañar</strong></h4>
						{!!Html::image('img/interes/IMG3144.jpg','a picture',array('class'=>'img-responsive col-lg-12'))!!}
						<p class="text-justify">
							Edwin Miño, Director Ejecutivo del CONGOPE, fue entrevistado por medios de comunicación en Cañar para hablar sobre las enmiendas constitucionales y los diálogos de equidad y justicia social.
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<h4><strong>CONGOPE apoya al arte</strong></h4>
						{!!Html::image('img/interes/0X4A1678.jpg','a picture',array('class'=>'img-responsive col-lg-12'))!!}
						<p class="text-justify">
							Con el apoyo del CONGOPE el Colegio de Artistas Plásticos de Pichincha presenta la exposición colectiva “I SALÓN DEL GRAN FORMATO” desde el 19 de agosto hasta el 19 de septiembre en el Centro Cultural de la PUCE.
						</p>
					</td>
				</tr>
			</tbody>
	</table>
</div><!-- /.blog-noticias-congope -->
<div class="col-md-3">
	<div class="blog">
		
		<div id='calendar' style="width: auto;margin: 0 auto;font-size: 12px;"></div>
	</div>
	<div class="blog">
		<h4>Cumpleaneros</h4>
		<table class="table table-condensed">
			<tbody>
				<tr>
					<td>Andrés Jaramillo</td>
					<td>4</td>
				</tr>
				<tr>
					<td>Jairo Rey</td>
					<td>5</td>
				</tr>
				<tr>
					<td>Jairo Benalcázar</td>
					<td>7</td>
				</tr><tr>
					<td>Gema Ñaupari</td>
					<td>10</td>
				</tr><tr>
					<td>Gianpolo Franke</td>
					<td>12</td>
				</tr><tr>
					<td>Alondra Yépez</td>
					<td>16</td>
				</tr><tr>
					<td>Mónica Muñoz</td>
					<td>27</td>
				</tr><tr>
					<td>Rocío Alomía</td>
					<td>30</td>
				</tr><tr>
					<td>Fausto Romero</td>
					<td>31</td>
				</tr>
			</tbody>
		</table>
	</div>
</div><!-- /.blog-sidebar-opciones -->
@stop