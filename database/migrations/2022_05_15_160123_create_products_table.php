<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->string('product_uniqueness');
            $table->string('carton_image')->nuallable();
            $table->string('strip_image')->nuallable();
            $table->string('tablet_image')->nuallable();
            $table->string('logo_image')->nuallable();
            $table->string('label_claim')->nuallable();
            $table->string('top')->nuallable();
            $table->string('tcp')->nuallable();
            $table->string('target_doctors')->nuallable();
            $table->string('patients_profile')->nuallable();
            $table->string('cpa')->nullable();
            $table->string('others')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
