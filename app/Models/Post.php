<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = [
    ];

    public function favorites()
    {
        return $this->belongsToMany(User::class, 'user_posts');

    }
}
