@extends('layouts.masterplus')
@section('sidebar')
    <?php echo $sidebar ?>
@stop
@section('content')
    <header class="header bg-light dker bg-gradient">
        <p>Foro de inquietudes y opiniones públicas</p>
    </header>
    @include('layouts.errors')
    @include('proyectos.lineaFin.components.modals')
    <section class="scrollable wrapper">
    	<div class="row">
    	<div class="col-lg-12">
    	<!-- .comment-list -->
                  <section class="comment-list block">
                    <article id="comment-id-1" class="comment-item">
                      <a class="pull-left thumb-sm avatar">
                        <img src="images/avatar.jpg" class="img-circle">
                      </a>
                      <span class="arrow left"></span>
                      <section class="comment-body panel panel-default">
                        <header class="panel-heading bg-white">
                          <a href="#">John smith</a>
                          <label class="label bg-info m-l-xs">Editor</label> 
                          <span class="text-muted m-l-sm pull-right">
                            <i class="fa fa-clock-o"></i>
                            Just now
                          </span>
                        </header>
                        <div class="panel-body">
                          <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</div>
                          <div class="comment-action m-t-sm">
                            <a href="#" data-toggle="class" class="btn btn-default btn-xs active">
                              <i class="fa fa-star-o text-muted text"></i>
                              <i class="fa fa-star text-danger text-active"></i> 
                              Like
                            </a>
                            <a href="#comment-form" class="btn btn-default btn-xs">
                              <i class="fa fa-mail-reply text-muted"></i> Reply
                            </a>
                          </div>
                        </div>
                      </section>
                    </article>
                    <!-- .comment-reply -->
                    <article id="comment-id-2" class="comment-item comment-reply">
                      <a class="pull-left thumb-sm avatar">
                        <img src="images/avatar.jpg" class="img-circle">
                      </a>
                      <span class="arrow left"></span>
                      <section class="comment-body panel panel-default text-sm">
                        <div class="panel-body">
                          <span class="text-muted m-l-sm pull-right">
                            <i class="fa fa-clock-o"></i>
                            10m ago
                          </span>
                          <a href="#">Mika Sam</a>
                          <label class="label bg-dark m-l-xs">Admin</label> 
                          Report this comment is helpful                           
                        </div>
                      </section>
                    </article>
                    <!-- / .comment-reply -->
                    <article id="comment-id-3" class="comment-item">
                      <a class="pull-left thumb-sm avatar"><img src="images/avatar.jpg" class="img-circle"></a>
                      <span class="arrow left"></span>
                      <section class="comment-body panel panel-default">
                        <header class="panel-heading">                      
                          <a href="#">By me</a>
                          <label class="label bg-success m-l-xs">User</label> 
                          <span class="text-muted m-l-sm pull-right">
                            <i class="fa fa-clock-o"></i>
                            1h ago
                          </span>
                        </header>
                        <div class="panel-body">
                          <div>This comment was posted by you.</div>
                          <div class="comment-action m-t-sm">
                            <a href="#comment-id-3" data-dismiss="alert" class="btn btn-default btn-xs">
                              <i class="fa fa-trash-o text-muted"></i> 
                              Remove
                            </a>
                          </div>
                        </div>
                      </section>
                    </article>
                    <article id="comment-id-4" class="comment-item">
                      <a class="pull-left thumb-sm avatar"><img src="images/avatar.jpg" class="img-circle"></a>
                      <span class="arrow left"></span>
                      <section class="comment-body panel panel-default">
                        <header class="panel-heading">
                          <a href="#">Peter</a>
                          <label class="label bg-primary m-l-xs">Vip</label> 
                          <span class="text-muted m-l-sm pull-right">
                            <i class="fa fa-clock-o"></i>
                            2hs ago
                          </span>
                        </header>
                        <div class="panel-body">
                          <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                          </blockquote>
                          <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit...</div>
                          <div class="comment-action m-t-sm">
                            <a href="#" data-toggle="class" class="btn btn-default btn-xs">
                              <i class="fa fa-star-o text-muted text"></i>
                              <i class="fa fa-star text-danger text-active"></i> 
                              Like
                            </a>
                            <a href="#comment-form" class="btn btn-default btn-xs"><i class="fa fa-mail-reply text-muted"></i> Reply</a>
                          </div>
                        </div>
                      </section>
                    </article>
                    <!-- comment form -->
                    <article class="comment-item media" id="comment-form">
                      <a class="pull-left thumb-sm avatar"><img src="images/avatar.jpg" class="img-circle"></a>
                      <section class="media-body">
                        <form action="" class="m-b-none">
                          <div class="input-group">
                            <input type="text" class="form-control" placeholder="Input your comment here">
                            <span class="input-group-btn">
                              <button class="btn btn-primary" type="button">POST</button>
                            </span>
                          </div>
                        </form>
                      </section>
                    </article>
                  </section>
                  <!-- / .comment-list -->
                  </div>
</div>
    </section>
@stop