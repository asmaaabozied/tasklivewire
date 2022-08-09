<div class="modal" role="dialog" data-backdrop="true" style="display: block">
    <div class="modal-dialog">

        <div class="modal-content">

            <div id="OpenDialog" class="modal-body" style="background-color: #1B222C;">


                <div class="card ">

                    <div class="card-header card-header-rose card-header-icon">


                        <div class="card-icon">
                            <img src="{{ asset('assets/front/images/icons/Group 109.png') }}"
                                 class="img-fluid"
                                 width="35px">
                        </div>
                        <div class="row">

                            <div class="col-md-10 col-9">
                                <h4 class="card-title">@lang('lang.add')</h4>


                            </div>
                            <div class="col-md-2 col-3">
                                <button type="button" class="btn btn-fill" data-dismiss="modal"
                                        wire:click="toggleAddModal"
                                        style="font-size: 25px;"><i class="fa fa-times-circle"></i>
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
                                                      id="summary-ckeditor" name="summary-ckeditor"></textarea>

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


                                            <select class="form-control date date1" id="GenderId" name="GenderId" wire:model.defer="post_id">
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
                    <div class="card-footer ">
                        <button class="btn btn-fill btn-rose pull-right" wire:click="save"
                        >@lang('lang.add')
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal" tabindex="-1" role="dialog" data-backdrop="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Modal body text goes here.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
