<?php

namespace Sinapptic;

use Illuminate\Database\Eloquent\Model;

class blog_posts extends Model
{
    protected $table = 'blog_posts';

    protected $fillable = [
        'departamento_id',
        'title',
        'subtitle',
        'content',
        'image',
        'type',
        'status',
        'order',
        'url',
        'source',
        'url_source'
    ];
}
