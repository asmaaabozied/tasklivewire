<?php

namespace App\Http\Livewire\Post;

use App\Models\Post;
use Dompdf\Exception;


use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

use Carbon\Carbon;


class Index extends Component
{
    use WithPagination;

    public $AddModelOpened = false;
    public $EditModelOpened = false;
    public $ShowModelOpened = false;
    public $dates;

    public $name;


    public $data;
    protected $paginationTheme = 'bootstrap';


    public $post, $description, $created_at, $u_id;

    protected $listeners = ['getPost' => 'getPost', 'getDataNull' => 'getDataNull'];


    public function render()
    {


        $this->data['post'] = Post::latest()->simplePaginate(7);
        $this->data['total'] = Post::count();

        return view('livewire.post.index');

    }


    public function ToggleLike($id)
    {
        $user = Auth::user();
        $post = Post::find($id);

//       dd($post->favorites);

        $post->favorites()->toggle($user);

        flash(trans('lang.updated_successfully'));
    }

    public function save()
    {


        $post = Post::create([

            'name' => $this->name,
            'description' => $this->description,

        ]);


        if ($post) {
            $this->emit('getDataNull');

            flash(trans('lang.added_successfully'));

            $this->AddModelOpened = false;

        }


    }

    public function toggleShowModal($id)
    {
        $this->ShowModelOpened = !$this->ShowModelOpened;

        $post = Post::find($id);

        if ($post) {

            $this->emit('getPost', $post);


        }

    }

    public function ShowModalClose()
    {
        $this->ShowModelOpened = false;

    }

    public function toggleAddModal()
    {

        $this->AddModelOpened = !$this->AddModelOpened;
        $this->emit('getDataNull');

    }

    public function toggleEditModal($id)
    {

        $this->EditModelOpened = !$this->EditModelOpened;

        $post = Post::find($id);

        if ($post) {

            $this->emit('getPost', $post);


        }
    }

    public function toggleEditCloseModal()
    {
        $this->EditModelOpened = false;

    }


    public function edit($id)
    {
        $post = Post::find($id);

        if ($post) {

            $this->emit('getPost', $post);

        }

    }

    public function show($id)
    {
        $post = Post::find($id);

        if ($post) {

            $this->emit('getPost', $post);

        }

    }


    public function update()
    {


        $post = Post::find($this->u_id);

        $post->update([
            'name' => $this->name,
            'description' => $this->description,
        ]);


        if ($post) {
            $this->EditModelOpened = false;
            $this->emit('getDataNull');

            flash(trans('lang.updated_successfully'));

        }
    }

    public function destroy($id)
    {

        $post = Post::find($id);


        $post->delete();

        flash(trans('lang.deleted_sucessfully'));


    }

    public function getPost($post)
    {
        $this->post = $post;
        $this->name = $this->post['name'];
        $this->description = $this->post['description'];


        $this->created_at = isset($this->post['created_at']) ? Carbon::parse($this->post['created_at'])->format('Y-m-d') : '';

        $this->u_id = $this->post['id'];


    }

    public function getDataNull()
    {

        $this->description = null;
        $this->name = null;

        $this->created_at = null;

    }


}
