<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePendaftaranTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pendaftaran', function (Blueprint $table) {
            $table->id('id_pendaftaran');
            $table->string('gambar', 255);
            $table->string('ktp', 255);
            $table->string('surat_rekomendasi', 255);
            $table->string('cv', 255);
            $table->string('proposal', 255)->nullable();
            $table->foreignId('id_users')->constrained('users'); // Assuming users table exists
            $table->string('status_pendaftaran', 200);
            $table->string('keterangan', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pendaftaran');
    }
};