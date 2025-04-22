<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Enrollment; // Ensure you have an Enrollment model

class EnrollmentController extends Controller
{
    // Display a list of enrollments
    public function index()
    {
        $enrollments = Enrollment::all();
        return view('admin.enrollments.index', compact('enrollments'));
    }

    // Show details of a specific enrollment
    public function show($id)
    {
        $enrollment = Enrollment::findOrFail($id);
        return view('admin.enrollments.show', compact('enrollment'));
    }

    // Approve an enrollment
    public function approve($id)
    {
        $enrollment = Enrollment::findOrFail($id);
        $enrollment->status = 'approved';
        $enrollment->save();

        return redirect()->route('admin.enrollments.index')->with('success', 'Enrollment approved successfully.');
    }

    // Reject an enrollment
    public function reject($id)
    {
        $enrollment = Enrollment::findOrFail($id);
        $enrollment->status = 'rejected';
        $enrollment->save();

        return redirect()->route('admin.enrollments.index')->with('error', 'Enrollment rejected.');
    }
}

