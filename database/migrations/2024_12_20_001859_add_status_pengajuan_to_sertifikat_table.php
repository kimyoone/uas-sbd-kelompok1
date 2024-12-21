<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusPengajuanToSertifikatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('sertifikat', function (Blueprint $table) {
            $table->enum('status_pengajuan', ['pending', 'approved', 'rejected'])->default('pending')->after('nama_sertifikat'); // Sesuaikan nama kolom dan tipe data sesuai kebutuhan
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('sertifikat', function (Blueprint $table) {
            $table->dropColumn('status_pengajuan');
        });
    }
}