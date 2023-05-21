<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionsSeeder extends Seeder
{
    public function run()
    {
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Create roles
        $userRole = Role::create(['name' => 'user']);
        $adminRole = Role::create(['name' => 'admin']);

        // Create permissions
        $viewContentPermission = Permission::create(['name' => 'view content']);
        $editOwnContentPermission = Permission::create(['name' => 'edit own content']);
        $editAllContentPermission = Permission::create(['name' => 'edit all content']);

        // Assign permissions to roles
        $userRole->givePermissionTo($viewContentPermission);
        $userRole->givePermissionTo($editOwnContentPermission);

        $adminRole->givePermissionTo($viewContentPermission);
        $adminRole->givePermissionTo($editOwnContentPermission);
        $adminRole->givePermissionTo($editAllContentPermission);

        $manageUsersPermission = Permission::create(['name' => 'manage-users']);
        $adminRole->givePermissionTo($manageUsersPermission);
    }
}
