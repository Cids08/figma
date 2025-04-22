<?php
// app/Http/Controllers/EnrollmentController.php
namespace App\Http\Controllers;

use App\Models\Enrollment;
use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use App\Mail\EnrollmentConfirmation;

class EnrollmentController extends Controller
{
    public function create()
    {
        return view('enrollment.form');
    }

    public function store(Request $request)
    {
        // Validate form data
        $validated = $request->validate([
            'enrollmentStatus' => 'required|in:new,transferee,returnee',
            'gradeLevel' => 'required',
            'firstName' => 'required|string|max:255',
            'middleName' => 'nullable|string|max:255',
            'lastName' => 'required|string|max:255',
            'dateOfBirth' => 'required|date',
            'gender' => 'required|in:male,female,other',
            'studentEmail' => 'nullable|email|max:255',
            'previousSchool' => 'nullable|string|max:255',
            'specialNeeds' => 'nullable|string|max:255',
            'parentName' => 'required|string|max:255',
            'relationship' => 'required|string|max:255',
            'mobileNumber' => 'required|string|max:20',
            'landline' => 'nullable|string|max:20',
            'email' => 'required|email|max:255',
            'address' => 'required|string|max:500',
            'emergencyName' => 'required|string|max:255',
            'emergencyRelationship' => 'required|string|max:255',
            'emergencyPhone' => 'required|string|max:20',
            'agreement' => 'required|accepted',
            
            // Document checkboxes
            'docs_birthCertificate' => 'required|accepted',
            'docs_reportCard' => 'nullable',
            'docs_tor' => 'nullable',
            'docs_brgyResidency' => 'nullable',
            'docs_idPictures' => 'nullable',
            'docs_additional' => 'nullable',
            
            // Document file uploads
            'birthCertificateFile' => 'required|file|mimes:jpeg,png,jpg,pdf|max:5120',
            'reportCardFile' => 'nullable|file|mimes:jpeg,png,jpg,pdf|max:5120',
            'torFile' => 'nullable|file|mimes:jpeg,png,jpg,pdf|max:5120',
            'brgyResidencyFile' => 'nullable|file|mimes:jpeg,png,jpg,pdf|max:5120',
            'additionalDocsFile.*' => 'nullable|file|mimes:jpeg,png,jpg,pdf|max:5120',
            
            // Confirmation from the modal
            'confirmed' => 'nullable'
        ]);

        // Create enrollment record
        $enrollment = new Enrollment();
        $enrollment->student_type = $request->enrollmentStatus;
        $enrollment->grade_level = $request->gradeLevel;
        $enrollment->first_name = $request->firstName;
        $enrollment->middle_name = $request->middleName;
        $enrollment->last_name = $request->lastName;
        $enrollment->date_of_birth = $request->dateOfBirth;
        $enrollment->gender = $request->gender;
        $enrollment->student_email = $request->studentEmail;
        $enrollment->previous_school = $request->previousSchool;
        $enrollment->special_needs = $request->specialNeeds;
        $enrollment->parent_name = $request->parentName;
        $enrollment->relationship = $request->relationship;
        $enrollment->mobile_number = $request->mobileNumber;
        $enrollment->landline = $request->landline;
        $enrollment->email = $request->email;
        $enrollment->address = $request->address;
        $enrollment->emergency_name = $request->emergencyName;
        $enrollment->emergency_relationship = $request->emergencyRelationship;
        $enrollment->emergency_phone = $request->emergencyPhone;
        $enrollment->has_id_pictures = $request->has('docs_idPictures');
        $enrollment->status = 'pending'; // Initial status
        $enrollment->agreement = $request->has('agreement') ? 1 : 0;
        $enrollment->confirmed_details = $request->has('confirmed') ? 1 : 0;
        
        // Save the enrollment record
        $enrollment->save();
        
        // Generate a unique folder for this student's documents
        $folderPath = 'student_documents/' . $enrollment->id . '_' . Str::slug($request->lastName . '_' . $request->firstName);
        
        // Handle document uploads
        $this->storeDocument($request, 'birthCertificateFile', 'Birth Certificate', $enrollment->id, $folderPath);
        
        if ($request->hasFile('reportCardFile')) {
            $this->storeDocument($request, 'reportCardFile', 'Report Card', $enrollment->id, $folderPath);
        }
        
        if ($request->hasFile('torFile')) {
            $this->storeDocument($request, 'torFile', 'Transcript of Records', $enrollment->id, $folderPath);
        }
        
        if ($request->hasFile('brgyResidencyFile')) {
            $this->storeDocument($request, 'brgyResidencyFile', 'Barangay Residency', $enrollment->id, $folderPath);
        }
        
        // Handle multiple additional documents
        if ($request->hasFile('additionalDocsFile')) {
            foreach ($request->file('additionalDocsFile') as $index => $file) {
                $this->storeDocument($request, 'additionalDocsFile.' . $index, 'Additional Document ' . ($index + 1), $enrollment->id, $folderPath);
            }
        }

        // Send confirmation email
        try {
            Mail::to($enrollment->email)->send(new EnrollmentConfirmation($enrollment));
            
            // Add flash message for success
            session()->flash('success', 'Enrollment submitted successfully. A confirmation email has been sent.');
        } catch (\Exception $e) {
            // Log the error
            \Log::error('Failed to send enrollment confirmation: ' . $e->getMessage());
            
            // Flash a different message
            session()->flash('success', 'Enrollment submitted successfully. (Note: There was an issue sending the confirmation email)');
        }
        
        // Store enrollment in session as an array
        $request->session()->put('enrollment', [
            'id' => $enrollment->id,
            'email' => $enrollment->email,
            'firstName' => $enrollment->first_name,
            'lastName' => $enrollment->last_name
        ]);
        
        // Redirect to success page
        return redirect()->route('enrollment.success');
    }

    /**
     * Store a document in the storage and database.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  string  $inputName
     * @param  string  $documentType
     * @param  int  $enrollmentId
     * @param  string  $folderPath
     * @return void
     */
    private function storeDocument(Request $request, $inputName, $documentType, $enrollmentId, $folderPath)
    {
        // Check if inputName contains a dot (for array files)
        if (strpos($inputName, '.') !== false) {
            // Get parts (additionalDocsFile.0)
            $parts = explode('.', $inputName);
            $file = $request->file($parts[0])[$parts[1]];
        } else {
            $file = $request->file($inputName);
        }
        
        if ($file) {
            // Generate a unique filename
            $originalName = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $filename = Str::slug($documentType) . '-' . time() . '.' . $extension;
            
            // Store the file
            $path = $file->storeAs($folderPath, $filename, 'public');
            
            // Create document record
            $document = new Document();
            $document->enrollment_id = $enrollmentId;
            $document->document_type = $documentType;
            $document->file_name = $originalName;
            $document->file_path = $path;
            $document->file_size = $file->getSize();
            $document->file_extension = $extension;
            $document->save();
        }
    }

    public function success(Request $request)
    {
        // Check if enrollment data exists in session
        if (!$request->session()->has('enrollment')) {
            // Redirect to the form page without using named route
            return redirect('/enrollment')
                ->with('error', 'Enrollment information not found. Please try again.');
        }
        
        $enrollmentId = session('enrollment.id');
        return view('enrollment.success', compact('enrollmentId'));
    }
}