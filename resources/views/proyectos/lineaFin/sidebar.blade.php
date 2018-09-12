<div class="top_nav">
    <div class="nav_menu">
        <nav class="" role="navigation">

            @if(auth()->guest())
                @include('login')
            @else
                <ul class="nav navbar-nav">
                    <li>
                        <a href="{{ url('applist') }}"><span class="glyphicon glyphicon-th"></span> Apps</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            {{ auth()->user()->name }}
                            <span class=" fa fa-angle-down"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                            <li>
                                <a href="javascript:;">Perfil</a>
                            </li>
                            <li><a href="{{ url('/auth/logout') }}"><i class="fa fa-sign-out pull-right"></i> Cerrar Sesión</a></li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-green">6</span>
                        </a>
                        <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                            <li>
                                <a>
								<span class="image">
							<img src="images/img.jpg" alt="Profile Image">
						</span>
								<span>
							<span>John Smith</span>
								<span class="time">3 mins ago</span>
								</span>
								<span class="message">
							Film festivals used to be do-or-die moments for movie makers. They were where...
						</span>
                                </a>
                            </li>
                            <li>
                                <a>
								<span class="image">
							<img src="images/img.jpg" alt="Profile Image">
						</span>
								<span>
							<span>John Smith</span>
								<span class="time">3 mins ago</span>
								</span>
								<span class="message">
							Film festivals used to be do-or-die moments for movie makers. They were where...
						</span>
                                </a>
                            </li>
                            <li>
                                <a>
								<span class="image">
							<img src="images/img.jpg" alt="Profile Image">
						</span>
								<span>
							<span>John Smith</span>
								<span class="time">3 mins ago</span>
								</span>
								<span class="message">
							Film festivals used to be do-or-die moments for movie makers. They were where...
						</span>
                                </a>
                            </li>
                            <li>
                                <a>
								<span class="image">
							<img src="images/img.jpg" alt="Profile Image">
						</span>
								<span>
							<span>John Smith</span>
								<span class="time">3 mins ago</span>
								</span>
								<span class="message">
							Film festivals used to be do-or-die moments for movie makers. They were where...
						</span>
                                </a>
                            </li>
                            <li>
                                <div class="text-center">
                                    <a>
                                        <strong></strong></a><strong><a href="inbox.html">See All Alerts</a></strong><a href="inbox.html">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            @endif
        </nav>
    </div>
</div>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title">Sinapptic</a>
        </div>
        <br /><br />
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <br>
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i> Usuario<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{!!route('users.index')!!}"><i class='fa fa-plus fa-fw'></i> Agregar</a>
                        </li>
                        <li>
                            <a href="{!!route('users.index')!!}"><i class='fa fa-list-ol fa-fw'></i> Usuarios</a>
                        </li>
                    </ul>
                </li>
            </div>
        </div>
    </div>
</div>