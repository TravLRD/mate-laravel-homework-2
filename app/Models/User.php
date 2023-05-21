<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use Spatie\Permission\Models\Role;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'is_admin',
    ];

    protected static function boot()
    {
        parent::boot();

        static::saved(function ($user) {
            if ($user->isDirty('is_admin')) {
                $userRole = Role::where('name', 'user')->first();
                $adminRole = Role::where('name', 'admin')->first();

                if ($user->is_admin) {
                    // Remove 'user' role and assign 'admin' role
                    $user->removeRole($userRole);
                    $user->assignRole($adminRole);
                } else {
                    // Remove 'admin' role and assign 'user' role
                    $user->removeRole($adminRole);
                    $user->assignRole($userRole);
                }
            }
        });
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function blogPosts()
    {
        return $this->hasMany(BlogPost::class);
    }
}
