<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('home_sliders', function (Blueprint $table) {
            if (!Schema::hasColumn('home_sliders', 'video_file')) {
                $table->string('video_file')->nullable()->after('mobile_image');
            }
            if (!Schema::hasColumn('home_sliders', 'video_url')) {
                $table->string('video_url')->nullable()->after('video_file');
            }
        });
    }

    public function down()
    {
        Schema::table('home_sliders', function (Blueprint $table) {
            if (Schema::hasColumn('home_sliders', 'video_file')) {
                $table->dropColumn('video_file');
            }
            if (Schema::hasColumn('home_sliders', 'video_url')) {
                $table->dropColumn('video_url');
            }
        });
    }
};
