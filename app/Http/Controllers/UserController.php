<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    // Only authenticated users can access this controller
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        // Only allow admins to view the list of users
        if (auth()->user()->can('manage-users')) {
            $users = User::all();
            return view('users.index', compact('users'));
        } else {
            abort(403);
        }
    }

    public function create()
    {
        if (auth()->user()->can('manage-users')) {
            return view('users.create');
        } else {
            abort(403);
        }
    }

    public function store(Request $request)
    {
        if (auth()->user()->can('manage-users')) {
            // Validate request
            $request->validate([
                'name' => [
                    'required', 'string', 'max:255'
                ],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => ['required', 'string', 'min:8'],
                'is_admin' => ['required']
            ]);

            // Create user
            User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),  // Hash password
                'is_admin' => $request->has('is_admin'), // Update the 'is_admin' field based on the checkbox value
            ]);

            return redirect()->route('users.index');
        } else {
            abort(403);
        }
    }

    public function show(User $user)
    {
        if (auth()->user()->can('manage-users')) {
            return view('users.show', compact('user'));
        } else {
            abort(403);
        }
    }

    public function edit(User $user)
    {
        if (auth()->user()->can('manage-users')) {
            return view('users.edit', compact('user'));
        } else {
            abort(403);
        }
    }

    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'password' => 'nullable|string|min:8|confirmed',
            'is_admin' => 'nullable|boolean',
        ]);

        $user->name = $validatedData['name'];
        $user->email = $validatedData['email'];
        $user->is_admin = $request->has('is_admin');

        if ($request->filled('password')) {
            $user->password = Hash::make($validatedData['password']);
        }

        $user->save();

        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }



    public function destroy(User $user)
    {
        if (auth()->user()->can('manage-users')) {
            $user->delete();
            return redirect()->route('users.index');
        } else {
            abort(403);
        }
    }
}
