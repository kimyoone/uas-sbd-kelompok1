<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailUsersTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('detail_users', function (Blueprint $table) {
            $table->id('id_detail_users');
            $table->string('nim', 100);
            $table->string('nik', 100);
            $table->string('jenis_kelamin', 100);
            $table->string('agama', 100);
            $table->date('tanggal_lahir');
            $table->string('tempat_lahir', 255);
            $table->foreignId('id_users')->constrained('users'); // Assuming users table exists
            $table->string('alamat_lengkap', 255);
            $table->string('nama_lengkap', 255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_users');
    }
};