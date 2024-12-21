<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProfileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('profile')->insert([
            [
                'id_perusahaan' => 1,
                'nama_perusahaan' => 'Sekolah Tinggi Manajemen Informatika dan Komputer Bandung',
                'deskripsi' => 'Menjadi pusat pendidikan berkualitas bertaraf nasional dalam bidang Teknologi Informasi dalam rangka berpartisipasi menciptakan generasi bangsa yang mandiri pada tahun 2040',
                'visi' => 'Menjadi pusat pendidikan berkualitas bertaraf nasional dalam bidang Teknologi Informasi dalam rangka berpartisipasi menciptakan generasi bangsa yang mandiri pada tahun 2040',
                'misi' => 'Menyelenggarakan pendidikan tinggi bidang teknologi nformasuntuk menghasilkan generasi profesional technoprenur yang cerdas, inovatif dan mandiri serta memiliki in',
                'no_hp' => '081112222333',
                'facebook' => 'Stmik Bandung',
                'email' => 'angga@gmail.com',
                'instagram' => 'stmikbandung',
                'id_users' => 1,
                'gambar_perusahaan' => 'logonew.jpeg',
                'alamat' => 'Jl. Cikutra No.113, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124',
                'created_at' => '2024-05-10 18:40:40',
                'updated_at' => '2024-05-11 03:40:40',
            ],
        ]);
    }
}