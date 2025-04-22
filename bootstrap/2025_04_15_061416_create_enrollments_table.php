<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEnrollmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('enrollments', function (Blueprint $table) {
            $table->id();
            $table->string('student_type'); // new, transferee, returnee
            $table->string('grade_level');
            $table->string('first_name');
            $table->string('middle_name')->nullable();
            $table->string('last_name');
            $table->date('date_of_birth');
            $table->string('gender');
            $table->string('student_email')->nullable();
            $table->string('previous_school')->nullable();
            $table->text('special_needs')->nullable();
            $table->string('parent_name');
            $table->string('relationship');
            $table->string('mobile_number');
            $table->string('landline')->nullable();
            $table->string('email');
            $table->text('address');
            $table->string('emergency_name');
            $table->string('emergency_relationship');
            $table->string('emergency_phone');
            $table->boolean('has_id_pictures')->default(false);
            $table->boolean('agreement')->default(false);
            $table->string('status')->default('pending'); // pending, approved, rejected
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
        Schema::dropIfExists('enrollments');
    }
}