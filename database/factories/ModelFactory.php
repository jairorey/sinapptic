<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(Sinapptic\users::class, function (Faker\Generator $faker) {
    return [
				'identity'        => $faker->randomNumber,
				'name'            => $faker->name,
				'lastname'        => $faker->lastname,
				'nick'            => $faker->name,
				'avatar'          => 'default.jpg',
				'rol_id'          => $faker->biasedNumberBetween($min = 1, $max = 6),
				'departamento_id' => $faker->biasedNumberBetween($min = 1, $max = 12),
				'titulo_id'       => $faker->biasedNumberBetween($min = 1, $max = 14),
				'password'        => bcrypt(str_random(10)),
				'born'            => $faker->dateTime('2014-02-25 08:37:17'),
				'sex'             => $faker->biasedNumberBetween($min = 1, $max = 3),
				'address1'        => $faker->streetAddress,
				'address2'        => $faker->streetAddress,
				'cell'            => $faker->phoneNumber,
				'phone'           =>$faker->phoneNumber,
				'email'           => $faker->email,
				'ext'             =>$faker->biasedNumberBetween($min = 100, $max = 700),
				'active'          => rand(0,1),

				'remember_token' => str_random(10),
    ];
});

$factory->define(Sinapptic\roles::class, function (Faker\Generator $faker) {
	return [
		'name' => $faker->name,
		'description' => $faker->name
	];
});

/*$factory->define(Sinapptic\asistencia::class, function (Faker\Generator $faker) {
	return [
        'empleado' => $faker->name,
        'dia' => $faker->dateTime('2017-02-25 08:37:17'),
        'fecha' => $faker->dateTime('2017-02-25 08:37:17'),
        'horaentrada' => $faker->time('08:37'),
        'horasalida' => $faker->time('08:37'),
        'ausente' => $faker->biasedNumberBetween($min = 0, $max = 1)
	];
});*/


// $factory->define(Sinapptic\Post::class, function (Faker\Generator $faker) {
// 		return [
// 			'title'   => $faker->sentence,
// 			'user_id' => rand(1,10)
// 		];
// });