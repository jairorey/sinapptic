<div class="modal fade btn-edit-pnac" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <input type="hidden" id="_token" name="_token" value="{{ csrf_token() }}">
            {!! Form::open(['route' => ['docreceptor.asignar',':documento_id'], 'id' => 'form-asignar', 'method' => 'POST', 'role' =>'form', 'class' => 'form-horizontal']) !!}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Entregar a Receptor</h4>
            </div>

            <div class="modal-body">

                <div class="form-group">
                    {!! Form::label('documento_externo_id', 'Documento', array('class' => 'col-md-4 control-label')) !!}
                    <div class="col-md-6">
                        {!! Form::text('documento_externo_id', null , array('class' => 'form-control','readonly')) !!}
                    </div>
                </div>

                <div class="form-group">
                    {!! Form::label('user_id', 'Destinatario', array('class' => 'col-md-4 control-label')) !!}

                    <div class="col-md-6">

                        <div id="autocomplete-container"></div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {

        $('.btn-asignar').click(function(e) {
            e.preventDefault();
            var id = $(this).data('id');
            $('#documento_externo_id').val(id);
        })

        $('#form-asignar').on('submit', function(e) {
            e.preventDefault();
            var url = $(this).attr('action').replace(':documento_id',$('#documento_externo_id').val());
            var data = $(this).serialize();
            $.post(url,data, function(result) {
                location.href = '';
            }).fail(function (xhr, ajaxOptions, thrownError) {
                console.log(xhr.status);
                console.log(thrownError);
            });

        });

        {{--$.ajax({--}}
            {{--headers:{'X-CSRF-TOKEN': $("#_token").val()},--}}
            {{--url:'{{route('users.getAllUsers')}}',--}}
            {{--type: 'POST',--}}
            {{--dataType:'json',--}}
            {{--success: function(result) {--}}

//                $('#user_id').autocomplete({
//                    lookup: result,
//                    appendTo: '#autocomplete-container'
//                });
//            }
//
//        });




    });

</script>