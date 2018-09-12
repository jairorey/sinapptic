<?php

use Illuminate\Database\Seeder;

class asistenciaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Sinapptic\asistencia::class, 10)->create();
    }
}
