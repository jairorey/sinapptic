<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SinappTic</title>

    <!-- Css -->
    {!!Html::style('notebook/css/bootstrap.css')!!}
    {!!Html::style('notebook/css/animate.css')!!}
    {!!Html::style('notebook/css/font-awesome.min.css')!!}
    {!!Html::style('notebook/css/font.css')!!}
    {!!Html::style('notebook/js/calendar/bootstrap_calendar.css')!!}
    {!!Html::style('notebook/css/app_mod.css')!!}
    {!!Html::style('css/estilo.css')!!}
    {!!Html::style('css/icomoon.css')!!}

    <!-- Scripts -->
    {!!Html::script('notebook/js/ie/html5shiv.js')!!}
    {!!Html::script('notebook/js/ie/respond.min.js')!!}
    {!!Html::script('notebook/js/ie/excanvas.js')!!}


</head>
<body>
<section class="vbox">
    <header class="bg-dark dk header navbar navbar-fixed-top-xs">
        <div class="navbar-header aside-md">
            <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
                <i class="fa fa-bars"></i>
            </a>
            <a href="{!!route('home')!!}" class="navbar-brand"> {!! HTML::image('img/logo-sinapptic.png', 'alt') !!} <span>SinappTIC</span></a>
            <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user">
                <i class="fa fa-cog"></i>
            </a>
        </div>
        @if(auth()->guest())
            @include('login')
        @else
            <ul class="nav navbar-nav hidden-xs">
                <li>
                    <a href="{{ url('applist') }}"><span class="fa fa-sitemap"></span> Apps </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="thumb-sm avatar pull-left">
                          {!! HTML::image('notebook/images/default.jpg', 'alt') !!}
                        </span>
                        {{ \Auth::user()->name.' '.\Auth::user()->lastname }}
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight">
                        <li>
                            <a href="{{url('core/users/profile')}}">Datos de Perfil</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="{{ route('logout') }}" >Desconectarse</a>
                        </li>
                    </ul>
                </li>
            </ul>
        @endif
    </header>
</section>

<div class="main">
    <section class="scrollable wrapper">                    
       @yield('content')
    </section>
   
</div>
</body>
{!!Html::script('notebook/js/jquery.min.js')!!}
{!!Html::script('notebook/js/bootstrap.js')!!}
{!!Html::script('notebook/js/app.js')!!}
{!!Html::script('notebook/js/app.plugin.js')!!}
{!!Html::script('notebook/js/slimscroll/jquery.slimscroll.min.js')!!}
{!!Html::script('notebook/js/charts/easypiechart/jquery.easy-pie-chart.js')!!}
{!!Html::script('notebook/js/charts/sparkline/jquery.sparkline.min.js')!!}
{!!Html::script('notebook/js/charts/flot/jquery.flot.min.js')!!}
{!!Html::script('notebook/js/charts/flot/jquery.flot.tooltip.min.js')!!}
{!!Html::script('notebook/js/charts/flot/jquery.flot.resize.js')!!}
{!!Html::script('notebook/js/charts/flot/jquery.flot.grow.js')!!}
{!!Html::script('notebook/js/charts/flot/demo.js')!!}
{!!Html::script('notebook/js/calendar/bootstrap_calendar.js')!!}
{!!Html::script('notebook/js/sortable/jquery.sortable.js')!!}
</html>