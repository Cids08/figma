<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Enrollment extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_type',
        'grade_level',
        'first_name',
        'middle_name',
        'last_name',
        'date_of_birth',
        'gender',
        'student_email',
        'previous_school',
        'special_needs',
        'parent_name',
        'relationship',
        'mobile_number',
        'landline',
        'email',
        'address',
        'emergency_name',
        'emergency_relationship',
        'emergency_phone',
        'has_id_pictures',
        'agreement',
        'status'
    ];

    /**
     * Get the documents for the enrollment.
     */
    public function documents()
    {
        return $this->hasMany(Document::class);
    }
}