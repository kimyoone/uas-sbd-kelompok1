<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfileTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('profile', function (Blueprint $table) {
            $table->id('id_perusahaan');
            $table->string('nama_perusahaan', 100);
            $table->text('deskripsi');
            $table->text('visi');
            $table->text('misi');
            $table->string('no_hp', 15);
            $table->string('facebook', 100);
            $table->string('email', 100);
            $table->string('instagram', 100);
            $table->foreignId('id_users')->constrained('users'); // Assuming users table exists
            $table->string('gambar_perusahaan', 100);
            $table->string('alamat', 200);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profile');
    }
};