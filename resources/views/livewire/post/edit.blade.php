<div>

{{--    editPopModal--}}

    <div  class="modal" role="dialog" data-backdrop="true"
         style="display: block">
        <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <input hidden name="id" wire:model.defer="u_id">

                    <div id="OpenDialog1" class="modal-body"
                         style="background-color: #1B222C;">

                        <div class="card ">
                            <div
                                class="card-header card-header-rose card-header-icon">
                                <div class="card-icon">

                                    <img
                                        src="{{ asset('assets/front/images/icons/Group 119.png') }}"
                                        class="img-fluid" width="35px">
                                </div>
                                <div class="row">
                                    <div class="col-md-10 col-9">
                                        <h4 class="card-title"> {{$this->name}}</h4>
                                        <h5>@lang('lang.created_at')
                                            <span>{{$this->created_at}}</span></h5>
                                    </div>
                                    <div class="col-md-2 col-3">
                                        <button type="button" class="btn btn-fill"
                                                wire:click="toggleEditCloseModal()"
                                                data-dismiss="modal"
                                                style="font-size: 25px;"><i
                                                class="fa fa-times-circle"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>


                            <div class="card-body ">


                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="form-group bmd-form-group">

                                            <label for="Name"
                                                   class="bmd-label-floating">@lang('lang.name')</label>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <input class="form-control" maxlength="25"
                                                           type="text" data-val="true"
                                                           :errors="$error"
                                                           placeholder="@lang('lang.name')" id="name"
                                                           name="name"
                                                           spellcheck="false" data-ms-editor="true"
                                                           wire:model.defer="name">

                                                    <span class="text-danger">

                                                       @error('name') {{$message}} @enderror
                                                   </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="form-group bmd-form-group">

                                            <label for="Name"
                                                   class="bmd-label-floating">@lang('lang.description')</label>

                                            <div class="row">
                                                <div class="col-md-12">
                                                  <textarea wire:model.defer="description" class="form-control"
                                                            id="summary-ckeditor" name="summary-ckeditor"></textarea>

                                                    <span class="text-danger">
                                                       @error('description') {{$message}} @enderror
                                                   </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>


                            </div>
                            <div class="card-footer ">
                                <button class="btn btn-fill btn-rose pull-right"
                                        wire:click="update()"
                                >@lang('lang.edit')
                                </button>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>



</div>
