<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('home_sliders', function (Blueprint $table) {
            $table->string('video_file')->nullable()->after('mobile_image');
            $table->string('video_url')->nullable()->after('video_file');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('home_sliders', function (Blueprint $table) {
            //
        });
    }
};
