<!DOCTYPE html>
<html lang="es" class="app">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SinappTic</title>
    <!-- Css -->
    {!!Html::style('css/estilo.css')!!}
    {!!Html::style('notebook/css/bootstrap.css')!!}
    {!!Html::style('notebook/css/animate.css')!!}
    {!!Html::style('notebook/css/font-awesome.min.css')!!}
    {!!Html::style('notebook/css/font.css')!!}
    {!!Html::style('notebook/js/fuelux/fuelux.css')!!}
    {!!Html::style('notebook/js/datepicker/datepicker.css')!!}
    {!!Html::style('notebook/js/calendar/bootstrap_calendar.css')!!}
    {!!Html::style('notebook/css/app_mod.css')!!}
    {!!Html::style('notebook/js/datatables/datatables.css')!!}
    {!!Html::style('notebook/js/select2/select2.css')!!}
    {!!Html::style('notebook/js/nestable/nestable.css')!!}
    {!!Html::style('notebook/js/select2/theme.css')!!}
    {!!Html::style('css/fileinput.min.css')!!}
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
                    <a href="{{ url('applist') }}"><i class="fa fa-th fa-lg"></i> Apps</a>
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
                        <span class="arrow top"></span>
                        <li>
                            <a href="{{url('core/users/profile')}}"><i class="fa fa-github-square"></i> Datos de Perfil</a>
                        </li>
                        <li>
                            <a href="{{ route('logout') }}" ><i class="fa fa-sign-out"></i> Desconectarse</a>
                        </li>
                    </ul>
                </li>
            </ul>
            @endif
        </header>
        <section>
            <section class="hbox stretch">
                @include('layouts.sidebar')
                <section id="content">
                    <section class="vbox">
                        <section class="scrollable padder">
                            {!! $breadcrumb !!}
                            <div class="row">
                                <div class="col-lg-12">
                                    @include('layouts.messages')
                                    @yield('content')
                                </div>
                            </div>
                        </section>
                    </section>
                    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
                </section>
                <aside class="bg-light lter b-l aside-md hide" id="notes">
                    <div class="wrapper">Notification</div>
                </aside>
            </section>
        </section>
    </section>


    {!!Html::script('notebook/js/jquery-1.12.4.js')!!}
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
    {!!Html::script('notebook/js/fuelux/fuelux.js')!!}
    {!!Html::script('notebook/js/calendar/bootstrap_calendar.js')!!}
    {!!Html::script('js/bootstrap-datepicker.js')!!}
    {!!Html::script('locales/bootstrap-datepicker.es.min.js')!!}
    {!!Html::script('notebook/js/sortable/jquery.sortable.js')!!}
    {!!Html::script('notebook/js/datatables/jquery.dataTables.min.js')!!}
    {!!Html::script('notebook/js/libs/moment.min.js')!!}
    {!!Html::script('notebook/js/combodate/combodate.js')!!}
    {!!Html::script('notebook/js/select2/select2.min.js')!!}
    {!!Html::script('notebook/js/file-input/bootstrap-filestyle.min.js')!!}
    {!!Html::script('notebook/js/nestable/jquery.nestable.js')!!}
    {!!Html::script('notebook/js/wysiwyg/jquery.hotkeys.js')!!}
    {!!Html::script('notebook/js/wysiwyg/bootstrap-wysiwyg.js')!!}
    {!!Html::script('notebook/js/wysiwyg/demo.js')!!}
    {!!Html::script('notebook/js/jquery.dataTables.min.js')!!}
    {!!Html::script('js/fileinput/fileinput.js')!!}
    {!!Html::script('js/fileinput/locales/es.js')!!}
    {!!Html::script('js/globalFunctions.js')!!}
    
    
    

    @yield('script')
</body>
</html>