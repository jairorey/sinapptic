@extends('layouts.empty')
@section('content')
        @if(auth()->guest())
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Oops!</strong> Existió un problema con su información.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                        <h4><img class="aligncenter wp-image-404 thinglinkFiltered" src="http://www.congope.gob.ec/wp-content/uploads/2014/08/logocongope-web-e1408741667727.png" alt="" width="350" height="73" data-id="1287"></h4>
                        <p>&nbsp;</p>
                        <h4>IDENTIDAD ORGANIZACIONAL</h4>
                        <p style="text-align: justify;">El Consorcio de Gobiernos Autónomos Provinciales del Ecuador – CONGOPE, es una entidad asociativa que representa a los 23 GAD provinciales, mediante la promoción y el fortalecimiento de la gestión, de acuerdo al ejercicio de sus competencias. Se rige por la Constitución de la República, el Código Orgánico de Organización Territorial, Autonomía y Descentralización – COOTAD</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">LÍNEAS DE ACCIÓN</h4>
                        <ul>
                            <li>Posicionar la gestión de las prefecturas con una visión estratégica del territorio y sus necesidades.</li>
                            <li>Aportar en la generación de capacidades para el fortalecimiento de los procesos de desarrollo en las provincias.</li>
                            <li>Promover los procesos de autonomía y descentralización en el marco de las competencias de los GAD provinciales.</li>
                            <li>Construir una propuesta que identifique la potencialidad territorial como aporte a la política del cambio de la matriz productiva.</li>
                        </ul>
                        <h3 style="text-align: justify;"></h3>
                        <h3 style="text-align: center;">POLÍTICAS DE ACCIÓN</h3>
                        <p style="text-align: center;">Lineamientos que definen en el marco de las acciones específicas de la organización:</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Articulación intergubernamental</h4>
                        <p style="text-align: justify;">Articula con los niveles de gobiernos y actores nacionales, impulsa la aplicación de políticas públicas, afianza el rol de los gobiernos y empodera el ejercicio de las competencias.</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Igualdad, Equidad de Género y Equidad Social</h4>
                        <p style="text-align: justify;">En las provincias se promueve la implementación de sistemas de protección integral hacia los grupos de atención prioritaria fomentando el enfoque de género, igualdad y equidad.</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Comunicación</h4>
                        <p style="text-align: justify;">Fomenta un proceso dinámico de difusión de información como eje transversal en las actividades y la generación de productos comunicacionales, mismos que buscan el posicionamiento de la gestión de los GAD Provinciales en los territorios.</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Cooperación</h4>
                        <p style="text-align: justify;">Acerca la cooperación internacional a los GAD Provinciales a fin de complementar los recursos para la ejecución de proyectos que aporten desarrollo de las comunidades.</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Fortalecimiento de capacidades</h4>
                        <p style="text-align: justify;">Fortalece las capacidades individuales y colectivas mediante el fortalecimiento del talento humano e intercambio de experiencias en los GAD logrando con ello, el cumplimiento de metas.</p>
                        <h4 style="text-align: justify;"></h4>
                        <h4 style="text-align: justify;">Apoyo a la gestión de competencias</h4>
                        <p style="text-align: justify;">En el ámbito de las competencias establecidas en la Constitución y la normativa sobre la gestión en los territorios, el CONGOPE apoya a los gobiernos provinciales al asumir la integralidad de su capacidades y la responsabilidad del desarrollo local.</p>


        @else
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

            @if(!auth()->guest())
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
            @endif
        @endif
@endsection