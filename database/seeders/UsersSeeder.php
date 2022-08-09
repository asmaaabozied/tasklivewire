<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = \App\Models\User::count();
        if ($users == 0)
            \App\Models\User::create([
                'first_name'=>"ADMIN",
                'last_name'  => 'AdMIN',
                'email'=>'admin@admin.com',
                'email_verified_at'=>date("Y-m-d h:i:s"),
                'password'=>bcrypt('password')

            ]);


    }
}
