<div class="container">
    <section class="comments">
        <div class="card">
            <div class="card-header card-header-primary card-header-icon">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="card-icon">
                            <img src="{{ asset('assets/front/images/icons/Group 201.png') }}"
                                 class="img-fluid" width="35px">
                        </div>
                        <h4 class="card-title">@lang('lang.comments')
                            <span> ({{$data['total']}}) </span>
                        </h4>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="row ">
                            <div class="col-xl-4col-lg-4 col-md-4  col-xs-4">

                                <a wire:click="toggleAddModal"
                                   data-backdrop="static" data-keyboard="false"
                                   class="pull-right btn form-control">
                                    @lang('lang.create_new')<i
                                        class="fa fa-arrow-circle-right"></i></a>

                            </div>


                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            @if (flash()->message)
                <div class=" btn btn-success form-control  alert alert-box">
                    {{ flash()->message }}
                </div>
            @endif
            <div class="material-datatables table-responsive table">
                <table id="datatables" class="table table-striped table-no-bordered table-hover"
                       cellspacing="0" width="100%" style="width:100%">
                    <thead>
                    @if($data['comments'] !== 'null' && count($data['comments'] )>0)
                        <tr>
                            <th>@lang('lang.id')</th>
                            <th>@lang('lang.comments')</th>

                            <th>@lang('lang.created_at')</th>

                            <th class="disabled-sorting text-right"> @lang('lang.action')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($data['comments']  as $comment)
                        <tr>
                            <td><input type="checkbox"
                                       aria-label="Checkbox for following text input"></td>
                            <th>{{$comment->comment}}</th>

                            <th>{{isset($comment->created_at) ?$comment->created_at->diffForHumans() :''}}
                            </th>

                            <td class="text-right">

                                <a data-toggle="modal" onclick="RenderActions1('')" data-backdrop="static"
                                   data-keyboard="false"
                                   wire:click="toggleEditModal({{$comment->id}})"
                                   title="Click to edit"
                                   class="btn" style="padding:0;"> <i
                                        class="material-icons"><img
                                            src="{{ asset('assets/front/images/icons/edit1.png') }}"
                                            class="img-fluid" width="25px"></i></a>

                                <a onclick="confirm('Are you sure?') || event.stopImmediatePropagation()"
                                   wire:click="destroy({{$comment->id}})"><i
                                        class="material-icons"><img
                                            src="{{ asset('assets/front/images/icons/trash1.png') }}"
                                            class="img-fluid" width="25px"></i>
                                </a>

                                <a data-toggle="modal" wire:click="toggleShowModal({{$comment->id}})"
                                   data-backdrop="static" data-keyboard="false"
                                   onclick="RenderActions('/Users/EditUser/ed3256e3-9e4f-4ea4-a985-3f507ea89689')"
                                   title="Click to edit" data-target="#modalUser1" class="btn"
                                   style="padding:0;"> <i class="material-icons"><img
                                            src="{{ asset('assets/front/images/icons/menu-dots-vertical.png') }}"
                                            class="img-fluid" width="25px"></i></a>

                            </td>
                        </tr>
                    @endforeach
                    @else
                        <div class="col-12 d-flex justify-content-center align-items-center"
                             style="height: 300px;">
                            <div class="col-12 d-inline-block text-center">
                                <i class="fa fa-table fa-5x" aria-hidden="true"></i>
                                <br><br>
                                <p> @lang('lang.no_data')
                                <p>
                            </div>
                        </div>
                    @endif
                    {{--//editpopModal--}}
                    @if($EditModelOpened==true)
                        @include('livewire.comments.edit')
                        {{--// showpopModal--}}
                    @elseif($ShowModelOpened==true)
                        @include('livewire.comments.show')
                        <!-- createpopModal -->
                    @elseif($AddModelOpened==true)
                        @include('livewire.comments.create')
                    @endif
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end content-->
        <!--  end card  -->
    </section>
</div>
<!-- end row -->
<!-- /.box -->
@if(count($data['comments'] )>0)
    <div class="align-center">
        {!! $data['comments']->links()  !!}
    </div>
@endif
