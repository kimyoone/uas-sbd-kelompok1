<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AlurSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('alur')->insert([
            [
                'id_alur' => 1,
                'judul' => 'Registerasi online',
                'deskripsi' => 'Sebelum Melakukan Pendaftaran silahkan Lakukan Registerasi Akun Terlebih Dahulu Supaya Memiliki Akun untuk mendaftar',
                'gambar_alur' => 'user.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id_alur' => 2,
                'judul' => 'Lengkapi berkas',
                'deskripsi' => 'Setelah Melengkapi Biodata Silahkan Untuk Melakukan Proses Melengkapi Berkas Yang Ada Untuk Dapat Melanjutkan Proses Pendaftaran',
                'gambar_alur' => 'alur-260120220846cd95ad.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id_alur' => 3,
                'judul' => 'Menunggu Hasil',
                'deskripsi' => 'Setelah Mendaftar, Tunggu Hasil dan Cek Secara Berkala Pada Menu Daftar Berkas Yang Ada Pada Sub Menu Profil',
                'gambar_alur' => 'hourglass.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id_alur' => 4,
                'judul' => 'Selesai',
                'deskripsi' => 'Semua Proses Wajib Di Ikuti Secara Urut Untuk Dapat Mendaftar menjadi calon anggota bem stmik bandung, Terimakasih dan Semoga Diterima',
                'gambar_alur' => 'success.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}