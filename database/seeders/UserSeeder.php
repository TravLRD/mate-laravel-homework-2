<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $userRole = Role::where('name', 'user')->first();
        $adminRole = Role::where('name', 'admin')->first(); // fetch the admin role

        if (!$userRole) {
            $userRole = Role::create(['name' => 'user']);
        }

        if (!$adminRole) {
            $adminRole = Role::create(['name' => 'admin']); // ensure admin role exists
        }

        $user = User::create([
            'name' => 'Test User 1',
            'email' => 'testuser1@example.com',
            'password' => Hash::make('password'),
            'is_admin' => false, // the user is not an admin
        ]);

        $user->assignRole($userRole);

        $user2 = User::create([
            'name' => 'Test User 2',
            'email' => 'testuser2@example.com',
            'password' => Hash::make('password'),
            'is_admin' => false, // the user is not an admin
        ]);

        $user2->assignRole($userRole);

        $admin = User::create([
            'name' => 'Admin User',
            'email' => 'adminuser@example.com',
            'password' => Hash::make('password'),
            'is_admin' => true, // the user is an admin
        ]);

        $admin->assignRole($adminRole); // assign the admin role to the admin user
    }
}
