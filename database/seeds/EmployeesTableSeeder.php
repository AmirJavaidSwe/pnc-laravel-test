<?php
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('employees')->truncate();
        $faker = Faker\Factory::create();
        $limit = 133;
        for ($i = 1; $i < $limit; $i++) {
            \DB::table('employees')->insert([
                'first_name' => ucfirst($faker->firstName),
                'last_name' => ucfirst($faker->lastName),
                'email' => strtolower($faker->unique()->safeEmail),
                'phone' => $faker->phoneNumber,
                'company_id' => $i,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);
        }
    }
}