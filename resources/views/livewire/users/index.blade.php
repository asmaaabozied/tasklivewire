<div class="container">
   <section class="users">
         <div class="card">
            <div class="card-header card-header-primary card-header-icon">
               <div class="row">
                  <div class="col-md-6 col-sm-12">
                     <div class="card-icon">
                        <img src="{{ asset('assets/front/images/icons/Group 201.png') }}"
                           class="img-fluid" width="35px">
                     </div>
                     <h4 class="card-title">@lang('lang.users')
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
                        <div class="col-md-4 col-xs-4">
                           <div class="btn-group">
                              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              Export
                              <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu">
                                 <button wire:click="export"
                                    class="dropdown-item"> @lang('lang.export')</button>
                                 <button wire:click="exportPdf"
                                    class="dropdown-item"> @lang('lang.pdf')</button>
                                 <button wire:click="exportCsv"
                                    class="dropdown-item"> @lang('lang.csv')</button>
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4 col-xs-4">
                           <button type="button" class="btn btn-info filter-btn" data-toggle="collapse"
                              data-target="#demo">Filter
                           </button>
                        </div>

                     </div>
                  </div>
               </div>
               <div id="demo" class="collapse row" style="width:100%;margin:1%">
                  <div class="col-xl-4  col-md-4 col-lg-4 col-12 form-group">
                     <label class="">@lang('lang.name') </label>
                     <input wire:model="name"
                        type="text" class="form-control"/>
                  </div>
                  <div class="col-xl-4  col-md-4 col-lg-4 col-12 form-group">
                     <label class="">Status
                     </label>
                     <select
                        class="form-control date date1" id="GenderId"
                        name="GenderId" placeholder="All" wire:model="active">
                        <option selected disabled> Select</option>
                        <option value="1">@lang('lang.active')</option>
                        <option value="0">@lang('lang.nonactive')</option>
                     </select>
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
                  @if($data['users'] !== 'null' && count($data['users'] )>0)
                  <tr>
                     <th>@lang('lang.id')</th>
                     <th>@lang('lang.name')</th>
                     <th>@lang('lang.phone')</th>
                     <th>@lang('lang.created_at')</th>
                     <th>@lang('lang.image')</th>
                     <th class="disabled-sorting text-right"> @lang('lang.action')</th>
                  </tr>
               </thead>
               <tbody>
                  @foreach($data['users']  as $user)
                  <tr>
                     <td><input type="checkbox"
                        aria-label="Checkbox for following text input"></td>
                     <th>{{$user->first_name,$user->last_name}}</th>
                     <th>{{$user->phone}}</th>
                     <th>{{isset($user->created_at) ?$user->created_at->diffForHumans() :''}}
                     </th>
                     <td><span><img
                        src="{{ $user->image_path }}"
                        class="img-fluid" width="100px"></span></td>
                     <td class="text-right">

                        <a data-toggle="modal" onclick="RenderActions1('')"  data-backdrop="static" data-keyboard="false"
                           wire:click="toggleEditModal({{$user->id}})"
                           title="Click to edit"
                           class="btn" style="padding:0;"> <i
                           class="material-icons"><img
                           src="{{ asset('assets/front/images/icons/edit1.png') }}"
                           class="img-fluid" width="25px"></i></a>

                        <a onclick="confirm('Are you sure?') || event.stopImmediatePropagation()"
                           wire:click="destroy({{$user->id}})"><i
                           class="material-icons"><img
                           src="{{ asset('assets/front/images/icons/trash1.png') }}"
                           class="img-fluid" width="25px"></i>
                        </a>


                        <a data-toggle="modal" wire:click="toggleShowModal({{$user->id}})"
                           data-backdrop="static" data-keyboard="false"      onclick="RenderActions('/Users/EditUser/ed3256e3-9e4f-4ea4-a985-3f507ea89689')"
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
                  @include('livewire.users.edit')
                  {{--// showpopModal--}}
                  @elseif($ShowModelOpened==true)
                  @include('livewire.users.show')
                  <!-- createpopModal -->
                  @elseif($AddModelOpened==true)
                  @include('livewire.users.create')
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
@if(count($data['users'] )>0)
<div class="align-center">
   {!! $data['users']->links()  !!}
</div>
@endif
