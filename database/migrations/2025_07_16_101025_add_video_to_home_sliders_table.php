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
            $table->unsignedBigInteger('video_file')->nullable()->after('mobile_image');
            $table->string('video_url')->nullable()->after('video_file');
        });
    }

    public function down()
    {
        Schema::table('home_sliders', function (Blueprint $table) {
            $table->dropColumn(['video_file', 'video_url']);
        });
    }
};
