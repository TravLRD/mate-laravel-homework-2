<?php

namespace App\Policies;

use App\Models\User;
use App\Models\BlogPost;
use Illuminate\Auth\Access\HandlesAuthorization;

class BlogPostPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can update the blog post.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\BlogPost  $blogPost
     * @return bool
     */
    public function update(User $user, BlogPost $blogPost)
    {
        // Allow the user to update the blog post if they are the author or an admin.
        return $user->id === $blogPost->user_id || $user->hasRole('admin');
    }

    /**
     * Determine whether the user can delete the blog post.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\BlogPost  $blogPost
     * @return bool
     */
    public function delete(User $user, BlogPost $blogPost)
    {
        // Allow the user to delete the blog post if they are the author or an admin.
        return $user->id === $blogPost->user_id || $user->hasRole('admin');
    }
}
