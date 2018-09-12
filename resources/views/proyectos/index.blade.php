@extends('layouts.masterplus')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <header class="header bg-light dker bg-gradient">
      <p>Sistema de Gestión de Proyectos de Gobiernos Provinciales del Ecuador</p>
    </header>
    <section class="scrollable wrapper">
        <div class="row">
            @include('layouts.errors')
            @include('proyectos.components.modals')
            <div class="col-lg-6">
              <section class="panel bg-dark">
                <div class="carousel slide auto panel-body" id="c-fade">
                    <ol class="carousel-indicators out">
                      <li data-target="#c-fade" data-slide-to="0" class=""></li>
                      <li data-target="#c-fade" data-slide-to="1" class="active"></li>
                      <li data-target="#c-fade" data-slide-to="2" class=""></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="item">
                        <p class="text-center">
                          <em class="h4 text-mute">Gestión de Proyectos</em><br>
                          <small class="text-muted">Integre todos sus calculos y proyecciones en un solo lugar</small>
                        </p>
                      </div>
                      <div class="item active">
                        <p class="text-center">
                          <em class="h4 text-mute">Facil y Amigable para el Usuario</em><br>
                          <small class="text-muted">El sistema le guiara durante el uso</small>
                        </p>
                      </div>
                      <div class="item">
                        <p class="text-center">
                          <em class="h4 text-mute">Documentación Concisa</em><br>
                          <small class="text-muted">Todas sus inquietudes tienen una respuesta</small>
                        </p>
                      </div>
                    </div>
                    <a class="left carousel-control" href="#c-fade" data-slide="prev">
                      <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="right carousel-control" href="#c-fade" data-slide="next">
                      <i class="fa fa-angle-right"></i>
                    </a>
                </div>
              </section>
              <section class="panel panel-default">
                <header class="panel-heading bg-light">
                  <ul class="nav nav-tabs pull-right">
                    <li class="active"><a href="#messages-1" data-toggle="tab"><i class="fa fa-rocket text-default">
                    </i> Bienvenida</a></li>
                    <li><a href="#profile-1" data-toggle="tab"><i class="fa fa-question text-default"></i> FAQ</a></li>
                    <li><a href="#settings-1" data-toggle="tab"><i class="fa fa-bookmark text-default"></i> Teoria Inicial</a></li>
                  </ul>
                  <span class="hidden-sm">Información de Interes General</span>
                </header>
                <div class="panel-body">
                  <div class="tab-content">              
                    <div class="tab-pane active" id="messages-1">
                        El Consorcio de Gobiernos Provinciales del Ecuador le da la cordial bienvenida al Sistema de Gestión de Proyectos desarrollado por su Departamento de Tecnologías de la Información en conjunto con el Departamento de Proyectos, Seguimiento y Monitoreo, el cual le brindará las herramientas necesarias para un control de planificaciones y toma de decisiones al momento del planteo de proyectos para su institución.
                    </div>
                    <div class="tab-pane" id="profile-1">
                        Preguntas Frecuentes
                    </div>
                    <div class="tab-pane" id="settings-1">
                        Ques es el V.A.N.N y para que sirve?
                        Inglés: NPV, Net Present Value o Current Net Value (según caso). Francés: V.A.N: Valeur Actuelle Nette.  
                        NO es lo mismo que: VA (Valor Actual), Valor Actual Ajustado; Valor Futuro, Valor Neto…          
                        NO es exactamente lo mismo que VNA (Valor Neto "Actualizado").

                        ¿Qué es? ¿Para qué sirve?
                        Es un método cuya principal aplicación es determinar la rentabilidad de una inversión. 
                        Como su nombre indica trata de determinar el Valor que ahora (actual) tiene tu inversión sobre la base de los importes que se percibirán 
                        en unos plazos determinados.
                        Se calcula sobre los flujos netos de caja que generará la inversión:
                        El VAN, es el valor monetario que resulta de restar a la inversión inicial la suma de los flujos de caja esperados, ajustados con cierta tasa de descuento.
                        Dicho de otro modo: consiste en situar a valor presente los flujos de caja futuros que va a generar el proyecto, descontados a un cierto tipo de interés
                         ("la tasa de descuento"), y compararlos con el importe inicial de la inversión. 
                        Es el sistema más usado lo que no significa que sea perfecto … pero - junto a la TIR - te dará una idea bastante clara y fiable de la factibilidad/rentabilidad de 
                        tu proyecto de inversión.    



                    </div>
                  </div>
                </div>
              </section>
            </div>
        </div>
    </section>
@stop