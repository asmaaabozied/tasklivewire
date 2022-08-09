<?php

namespace App\Http\Livewire\Comments;

use App\Models\Comment;
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

    public $comments, $comment, $post_id;


    public $data;
    protected $paginationTheme = 'bootstrap';


    public $u_id;

    protected $listeners = ['getComment' => 'getComment', 'getDataNull' => 'getDataNull'];


    public function render()
    {


        $this->data['comments'] = Comment::latest()->simplePaginate(7);
        $this->data['posts'] = Post::latest()->get();

        $this->data['total'] = Comment::count();

        return view('livewire.comments.index');

    }


    public function save()
    {


        $comment = Comment::create([

            'comment' => $this->comments,
            'post_id' => $this->post_id,
            'User_id' => Auth::id(),

        ]);


        if ($comment) {
            $this->emit('getDataNull');

            flash(trans('lang.added_successfully'));

            $this->AddModelOpened = false;

        }


    }

    public function toggleShowModal($id)
    {
        $this->ShowModelOpened = !$this->ShowModelOpened;

        $comment = Comment::find($id);

        if ($comment) {

            $this->emit('getComment', $comment);


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

        $comment = Comment::find($id);

        if ($comment) {

            $this->emit('getComment', $comment);


        }
    }

    public function toggleEditCloseModal()
    {
        $this->EditModelOpened = false;

    }


    public function edit($id)
    {
        $comment = Comment::find($id);

        if ($comment) {

            $this->emit('getComment', $comment);

        }

    }

    public function show($id)
    {
        $comment = Comment::find($id);

        if ($comment) {

            $this->emit('getComment', $comment);

        }

    }


    public function update()
    {


        $comment = Comment::find($this->u_id);

        $comment->update([
            'comment' => $this->comments,
            'post_id' => $this->post_id,
            'User_id' => Auth::id(),

        ]);


        if ($comment) {
            $this->EditModelOpened = false;
            $this->emit('getDataNull');

            flash(trans('lang.updated_successfully'));

        }
    }

    public function destroy($id)
    {

        $comment = Comment::find($id);


        $comment->delete();

        flash(trans('lang.deleted_sucessfully'));


    }

    public function getComment($comment)
    {
        $this->comment = $comment;
        $this->comments = $this->comment['comment'];


        $this->created_at = isset($this->comment['created_at']) ? Carbon::parse($this->comment['created_at'])->format('Y-m-d') : '';

        $this->u_id = $this->comment['id'];


    }

    public function getDataNull()
    {

        $this->comments = null;


        $this->created_at = null;

    }


}
