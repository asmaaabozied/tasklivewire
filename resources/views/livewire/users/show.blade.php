<div>
    {{--    showPopModal--}}

    <div class="modal" role="dialog" data-backdrop="true"
         style="display: block">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
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
                                    <h4 class="card-title"> {{$this->first_name}}</h4>
                                    <h5>@lang('lang.created_at')
                                        <span>{{$this->created_at}}</span></h5>
                                </div>
                                <div class="col-md-2 col-3">
                                    <button type="button" class="btn btn-fill"
                                            wire:click="ShowModalClose()"
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
                                               class="bmd-label-floating">@lang('lang.first_name')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-control" maxlength="25"
                                                       type="text" data-val="true"
                                                       :errors="$error"
                                                       placeholder="@lang('lang.first_name')" id="first_name"
                                                       name="first_name"
                                                       spellcheck="false" data-ms-editor="true"
                                                       wire:model.defer="first_name" readonly>

                                                <span class="text-danger">

                                                       @error('first_name') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.last_name')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-control" maxlength="25"
                                                       type="text" data-val="true"
                                                       wire:errors="$errors"
                                                       placeholder="@lang('lang.last_name')" id="last_name"
                                                       name="last_name"
                                                       spellcheck="false" data-ms-editor="true"
                                                       wire:model.defer="last_name" readonly>

                                                <span class="text-danger">
                                                       @error('last_name') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.email')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-control" maxlength="25"
                                                       type="email" data-val="true"
                                                       :errors="$error"
                                                       placeholder="@lang('lang.email')" id="first_name"
                                                       name="email"
                                                       spellcheck="false" data-ms-editor="true"
                                                       wire:model.defer="email" readonly>

                                                <span class="text-danger">

                                                       @error('email') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.address')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-control" maxlength="25"
                                                       type="text" data-val="true"
                                                       wire:errors="$errors"
                                                       placeholder="@lang('lang.address')" id="last_name"
                                                       name="address"
                                                       spellcheck="false" data-ms-editor="true"
                                                       wire:model.defer="address" readonly>

                                                <span class="text-danger">
                                                       @error('address') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.phone')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <input class="form-control" maxlength="25"
                                                       type="text" data-val="true"
                                                       wire:errors="$errors"
                                                       placeholder="@lang('lang.phone')" id="phone"
                                                       name="phone"
                                                       spellcheck="false" data-ms-editor="true"
                                                       wire:model.defer="phone" readonly>

                                                <span class="text-danger">
                                                       @error('phone') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>

                            <div class="row">

                                <div class="col-xl-5">
                                    <label for="photo-upload"
                                           class="custom-file-upload fas">
                                        <lable>@lang('lang.image')</lable>
                                        <div class="img-wrap img-upload">
                                            <img src="{{$this->image_path}}"
                                                 width="100" height="100">
                                        </div>


                                    </label>

                                    <span class="text-danger">
                                                       @error('image') {{$message}} @enderror
                                                   </span>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label
                                        class="container">@lang('lang.status')
                                        <input type="checkbox" readonly
                                               name="status" value="1"
                                               wire:model.defer="status"
                                               @if($this->status==1) checked="checked" @endif>
                                        <span class="checkmark"></span>
                                    </label>

                                </div>
                            </div>


                        </div>


                    </div>


                </div>
            </div>
        </div>
    </div>


</div>
