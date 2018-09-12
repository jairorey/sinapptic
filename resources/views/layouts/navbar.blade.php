<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    {!!Html::style('css/estilo.css')!!}
    {!!Html::style('css/app_mod.css')!!}
    {!!Html::style('css/bootstrap-timepicker.min.css')!!}
    {!!Html::style('fullcalendar/fullcalendar.css')!!}
    {!!Html::style('fullcalendar/fullcalendar.print.css')!!}
    {!!Html::style('summernote/summernote.css')!!}
    {!!Html::style('css/icomoon.min.css')!!}
    {!!Html::style('css/bootstrap3.min.css')!!}
    {!!Html::style('css/metisMenu.min.css')!!}
    {!!Html::style('css/sb-admin-2.css')!!}
    {!!Html::style('css/font-awesome.min.css')!!}
</head>
<body>
    @section('navbar')
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">{!!Html::image('img/congope.png','a picture',array('style' => 'width:50px; height:20px'))!!}</a>
                </div>
            </div>
            <div>
                <ul class="nav navbar-top-links navbar-right">
                    
                    <li class="form-inline">
                       {!!Form::open()!!}
                       {!! csrf_field() !!}
                        @include('/layouts/errors')
                        @include('/layouts/success')
                        {!!Form::hidden('_token',null,['value'=>"{{ csrf_token() }}"])!!}
                       <div class="form-group form-inline">
                           {!!Form::label('email','Email:')!!}
                           {!!Form::text('email',null,['class'=>'form-control', 'placeholder'=>'Ingrese su Email','value'=>"{{ old('email') }}"])!!}
                       </div>
                       <div class="form-group form-inline">
                           {!!Form::label('password','Password:')!!}
                           {!!Form::text('password',null,['class'=>'form-control', 'placeholder'=>'Ingrese su clave'])!!}
                       </div>
                       <div class="form-group form-inline">
                           {!!Form::submit('Iniciar Sesion',['class'=>'btn btn-primary'])!!}
                       </div>
                       {!!Form::close()!!}
                   </li>
                   
                   <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Ajustes</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="{!!URL::to('/logout')!!}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </div>
    @show
    

    {!!Html::script('js/jquery.min.js')!!}
    {!!Html::script('jquery/jquery-ui.min.js')!!}
    {!!Html::script('js/bootstrap3.min.js')!!}
    {!!Html::script('js/bootstrap-timepicker.js')!!}
    {!!Html::script('summernote/summernote.min.js')!!}
    {!!Html::script('fullcalendar/fullcalendar.min.js')!!}
    {!!Html::script('highcharts/js/highcharts.js')!!}
    {!!Html::script('fullcalendar/lib/moment.min.js')!!}
    {!!Html::script('fullcalendar/lang-all.js')!!}
    {!!Html::script('highcharts/js/highcharts.js')!!}
    {!!Html::script('js/metisMenu.min.js')!!}
    {!!Html::script('js/sb-admin-2.js')!!}


    @section('scripts')

    @show

</body>

</html>
