<!DOCTYPE html>
<html lang="es" class="app">
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
    {!!Html::style('notebook/js/fuelux/fuelux.css')!!}
    {!!Html::style('notebook/js/datepicker/datepicker.css')!!}
    {!!Html::style('notebook/js/calendar/bootstrap_calendar.css')!!}
    {!!Html::style('notebook/css/app_mod.css')!!}
    {!!Html::style('notebook/js/datatables/datatables.css')!!}


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
                    <a href="{{ url('proyect') }}"><i class="fa fa-th fa-lg"></i> Sistema de Gestión de Proyectos de Gobiernos Provinciales del Ecuador </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
                <li class="hidden-xs">
                    <a href="#" class="dropdown-toggle dk" data-toggle="dropdown">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-sm up bg-danger m-l-n-sm count">2</span>
                    </a>
                    <section class="dropdown-menu aside-xl">
                        <section class="panel bg-white">
                            <header class="panel-heading b-light bg-light">
                                <strong>You have <span class="count">2</span> notifications</strong>
                            </header>
                            <div class="list-group list-group-alt animated fadeInRight">
                                <a href="#" class="media list-group-item">
                  <span class="pull-left thumb-sm">
                    {!! HTML::image('notebook/images/avatar.jpg', 'alt', array('class' => 'img-circle')) !!}
                  </span>
                  <span class="media-body block m-b-none">
                    Use awesome animate.css<br>
                    <small class="text-muted">10 minutes ago</small>
                  </span>
                                </a>
                                <a href="#" class="media list-group-item">
                  <span class="media-body block m-b-none">
                    1.0 initial released<br>
                    <small class="text-muted">1 hour ago</small>
                  </span>
                                </a>
                            </div>
                            <footer class="panel-footer text-sm">
                                <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                                <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                            </footer>
                        </section>
                    </section>
                </li>
                <li class="dropdown hidden-xs">
                    <a href="#" class="dropdown-toggle dker" data-toggle="dropdown"><i class="fa fa-fw fa-search"></i></a>
                    <section class="dropdown-menu aside-xl animated fadeInUp">
                        <section class="panel bg-white">
                            <form role="search">
                                <div class="form-group wrapper m-b-none">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-btn">
                      <button type="submit" class="btn btn-info btn-icon"><i class="fa fa-search"></i></button>
                    </span>
                                    </div>
                                </div>
                            </form>
                        </section>
                    </section>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="thumb-sm avatar pull-left">
                          {!! HTML::image('notebook/images/avatar.jpg', 'alt') !!}
                        </span>
                        User <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight">
                        <span class="arrow top"></span>
                        <li>
                            <a href="#">Settings</a>
                        </li>
                        <li>
                            <a href="{{url('core/users/profile')}}">Profile</a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="badge bg-danger pull-right">3</span>
                                Notifications
                            </a>
                        </li>
                        <li>
                            <a href="docs.html">Help</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="{{ route('logout') }}" >Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
            @endif
        </header>
        <section>
            <section class="hbox stretch">
                <!-- .aside -->
                <aside class="bg-dark lter b-r aside-md hidden-print" id="nav">
                    <section class="vbox">
                        <header class="header bg-primary lter text-center clearfix">
                          <div class="btn-group">
                            <a class="btn btn-sm btn-dark btn-icon" title="Inicio" href="{{route('proyectos.index')}}"><i class="fa fa-info"></i></a>
                            <div class="btn-group hidden-nav-xs">
                              <a class="btn btn-sm btn-primary" href="{{route('proyectos.index')}}">
                                Información</a>
                            </div>
                          </div>
                        </header>
                        <section class="w-f scrollable">
                            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">
                                <!-- nav -->
                                <nav class="nav-primary hidden-xs">
                                    <ul class="nav">
                                        @include('layouts.sidebar')
                                    </ul>
                                </nav>
                                <!-- / nav -->
                            </div>
                        </section>
                        <footer class="footer lt hidden-xs b-t b-dark">
                          <div id="chat" class="dropup">
                            <section class="dropdown-menu on aside-md m-l-n">
                              <section class="panel bg-white">
                                <header class="panel-heading b-b b-light">Active chats</header>
                                <div class="panel-body animated fadeInRight">
                                  <p class="text-sm">No active chats.</p>
                                  <p><a href="#" class="btn btn-sm btn-default">Start a chat</a></p>
                                </div>
                              </section>
                            </section>
                          </div>
                          <div id="invite" class="dropup">                
                            <section class="dropdown-menu on aside-md m-l-n">
                              <section class="panel bg-white">
                                <header class="panel-heading b-b b-light">
                                  John <i class="fa fa-circle text-success"></i>
                                </header>
                              </section>
                            </section>
                          </div>
                          <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon">
                            <i class="fa fa-angle-left text"></i>
                            <i class="fa fa-angle-right text-active"></i>
                          </a>
                          <div class="btn-group hidden-nav-xs">
                            <button type="button" title="Chats" class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown" data-target="#chat"><i class="fa fa-comment-o"></i></button>
                          </div>
                        </footer>
                    </section>
                </aside>
                <!-- /.aside -->
                <section id="content">
                    <section class="vbox">
                        @yield('content')
                    </section>
                    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
                </section>
                <aside class="bg-light lter b-l aside-md hide" id="notes">
                    <div class="wrapper">Notification</div>
                </aside>
            </section>
        </section>
    </section>


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
    {!!Html::script('notebook/js/fuelux/fuelux.js')!!}
    {!!Html::script('notebook/js/calendar/bootstrap_calendar.js')!!}
    {!!Html::script('notebook/js/datepicker/bootstrap-datepicker.js')!!}
    {!!Html::script('notebook/js/sortable/jquery.sortable.js')!!}
    {!!Html::script('notebook/js/datatables/jquery.dataTables.min.js')!!}
    {!!Html::script('https://cdn.datatables.net/buttons/1.2.1/js/dataTables.buttons.min.js')!!}

    @yield('script');
</body>
</html>