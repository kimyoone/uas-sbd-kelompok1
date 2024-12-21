<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlurTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alur', function (Blueprint $table) {
            $table->id('id_alur');
            $table->string('judul', 200)->nullable(false);
            $table->text('deskripsi')->nullable(false);
            $table->string('gambar_alur', 100)->nullable(false);
            $table->timestamp('created_at')->useCurrent()->useCurrentOnUpdate();
            $table->dateTime('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alur');
    }
};