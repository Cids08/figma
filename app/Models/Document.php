<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    use HasFactory;

    protected $fillable = [
        'enrollment_id',
        'document_type',
        'file_name',
        'file_path',
        'file_size',
        'file_extension'
    ];

    /**
     * Get the enrollment that owns the document.
     */
    public function enrollment()
    {
        return $this->belongsTo(Enrollment::class);
    }
}