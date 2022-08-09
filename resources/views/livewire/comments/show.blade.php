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
                                <div class="col-xl-12">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.comments')</label>

                                        <div class="row">
                                            <div class="col-md-12">
                                                      <textarea wire:model.defer="comments" class="form-control"
                                                                id="summary-ckeditor"
                                                                name="summary-ckeditor"></textarea>

                                                <span class="text-danger">

                                                       @error('comments') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="form-group bmd-form-group">

                                        <label for="Name"
                                               class="bmd-label-floating">@lang('lang.post')</label>

                                        <div class="row">
                                            <div class="col-md-12">


                                                <select  readonly="" class="form-control date date1" id="GenderId" name="GenderId" wire:model.defer="post_id">
                                                    <option selected >Select</option>
                                                    @foreach($data['posts']  as $post)
                                                        <option value="{{$post->id}}">{{$post->name}}</option>
                                                    @endforeach

                                                </select>

                                                <span class="text-danger">

                                                       @error('post_id') {{$message}} @enderror
                                                   </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>


                        </div>


                    </div>


                </div>
            </div>
        </div>
    </div>


</div>
