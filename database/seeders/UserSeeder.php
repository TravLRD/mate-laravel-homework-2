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
        if (!$userRole) {
            // This is just to ensure that the 'user' role exists
            $userRole = Role::create(['name' => 'user']);
        }

        $user = User::create([
            'name' => 'Test User 1',
            'email' => 'testuser1@example.com',
            'password' => Hash::make('password'),
        ]);

        $user = User::create([
            'name' => 'Test User 2',
            'email' => 'testuser2@example.com',
            'password' => Hash::make('password'),
        ]);

        $user = User::create([
            'name' => 'Admin User',
            'email' => 'adminuser@example.com',
            'password' => Hash::make('password'),
        ]);

        $user->assignRole($userRole);
    }
}
