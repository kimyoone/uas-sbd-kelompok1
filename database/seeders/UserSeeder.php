<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'John Doe',
            'email' => 'johndoe@example.com',
            'email_verified_at' => now(),
            'password' => Hash::make('password'),
            'role' => 'admin',
            'no_telp' => '08123456789',
            'status' => 'active',
            'alamat' => 'Jl. Example No. 1',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        DB::table('users')->insert([
            'name' => 'Jane Smith',
            'email' => 'janesmith@example.com',
            'email_verified_at' => now(),
            'password' => Hash::make('password'),
            'role' => 'user',
            'no_telp' => '08987654321',
            'status' => 'inactive',
            'alamat' => 'Jl. Example No. 2',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
