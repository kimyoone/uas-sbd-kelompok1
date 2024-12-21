<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInformasiTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('informasi', function (Blueprint $table) {
            $table->id('id_informasi');
            $table->string('judul', 100);
            $table->text('deskripsi');
            $table->string('penulis', 100);
            $table->string('gambar_informasi', 200);
            $table->date('tgl_informasi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('informasi');
    }
};