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
        Schema::table('posts', function (Blueprint $table) {
            $table->foreignId('category_id')->after('author_id')->constrained(
                table: 'categories', 
                indexName: 'posts_category_id'
            );
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('posts', function (Blueprint $table) {
            // Menghapus foreign key dan kolom category_id
            $table->dropForeign(['posts_category_id']);
            $table->dropColumn('category_id');
        });
    }
};
