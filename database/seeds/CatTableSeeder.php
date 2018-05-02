<?php

use Illuminate\Database\Seeder;

class CatTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cat')->insert([
            'parent_id' => 0,
            'cat_name' => 'PHP',
            'created_at' => date('Y-m-s h:i:s',time()),
            'updated_at' => date('Y-m-s h:i:s',time())
        ]);
    }

}
