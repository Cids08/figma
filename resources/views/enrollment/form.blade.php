<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="images/logo.png">

  <meta name="description" content="San Roque Elementary School - Quality Education" />
  <meta name="keywords" content="education, elementary, school, learning" />

  <link href="https://fonts.googleapis.com/css2?family=Display+Playfair:wght@400;700&family=Inter:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/style.css">
  
  <title>San Roque Elementary School</title>
  <style>
    .form-label.required:after {
    content: " *";
    color: #dc3545;
    }
    .form-control, .form-select {
    border: 1px solid #adb5bd;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0,0,0,0.1);
    padding: 10px;
    height: calc(1.5em + 0.75rem + 10px);
    border-radius: 4px;
    width: 100%;
    transition: all 0.3s ease;
    box-sizing: border-box;
    }
    .form-control:hover, .form-select:hover {
    border-color: #6c757d;
    box-shadow: 0 2px 5px rgba(0,0,0,0.15);
    }

    .form-control:focus, .form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 3px rgba(13, 110, 253, 0.25);
    outline: none;
    }
    .form-label {
    font-weight: 500;
    margin-bottom: 8px;
    color: #343a40;
    display: block;
    }
    .card {
    border: 1px solid #dee2e6;
    border-radius: 6px;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    }
    .card-header {
    padding: 0.75rem 1.25rem;
    border-bottom: 2px solid #dee2e6;
    font-weight: 600;
    color: #212529;
    background-color: #e9ecef !important;
    }
    .card-body {
    padding: 1.25rem;
    background-color: #f8f9fa;
    }
    .critical-docs {
    font-weight: bold;
    color: #dc3545;
    }
    .data-notice {
    background-color: #fff3cd;
    border-left: 5px solid #ffc107;
    }
    .row.g-3 {
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  margin-bottom: 0;
}
.row.g-3 > [class*="col-"] {
  margin-bottom: 1rem;
}
textarea.form-control {
  height: auto;
}
.form-check {
  display: flex;
  align-items: center;
  padding-left: 1.75rem;
}
.form-check-input {
  margin-top: 0;
  margin-left: -1.75rem;
}
</style>
</head>

<body>

    @include('layouts.partials.navbar')
  
  <div class="container py-4 dddd">
    <!-- Header -->
    <div class="row mb-4 row align-items-center justify-content-center">
        <div class="col 12">
            <div class="bg-primary text-white p-4 rounded text-center">
                <h1 class="mb-0">Enrollment Form</h1>
            </div>
        </div>
    </div>
    
    <!-- Data Usage Notice -->
    <div class="row mb-4">
        <div class="col">
            <div class="card data-notice">
                <div class="card-body">
                    <h4 class="card-title">How We Use Your Information</h4>
                    <p>All information collected in this form will be used by the school for:</p>
                    <ul>
                        <li>Processing your child's enrollment</li>
                        <li>Creating student records and ID</li>
                        <li>Emergency contact purposes</li>
                        <li>Communication regarding your child's education</li>
                    </ul>
                    <p class="mb-0">Your information will be handled confidentially and securely.</p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Enrollment Form -->
    <form id="enrollmentForm" method="POST" action="{{ route('enrollment.submit') }}" enctype="multipart/form-data" >
    @csrf
    
    @if ($errors->any())
        <div class="alert alert-danger mb-4">
            <h5>Please correct the following errors:</h5>
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    
    <!-- Enrollment Type Section -->
    <div class="card mb-4">
    <div class="card-header bg-light">
        Enrollment Details
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-md-6">
                <label class="form-label required">Student Type</label>
                <div class="form-check">
                    <input class="form-check-input @error('enrollmentStatus') is-invalid @enderror" type="radio" name="enrollmentStatus" id="enrollmentStatus_new" value="new" {{ old('enrollmentStatus') == 'new' ? 'checked' : '' }} required>
                    <label class="form-check-label">New Student</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input @error('enrollmentStatus') is-invalid @enderror" type="radio" name="enrollmentStatus" id="enrollmentStatus_transferee" value="transferee" {{ old('enrollmentStatus') == 'transferee' ? 'checked' : '' }}>
                    <label class="form-check-label">Transferee</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input @error('enrollmentStatus') is-invalid @enderror" type="radio" name="enrollmentStatus" id="enrollmentStatus_returnee" value="returnee" {{ old('enrollmentStatus') == 'returnee' ? 'checked' : '' }}>
                    <label class="form-check-label">Returnee</label>
                </div>
                @error('enrollmentStatus')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="col-md-6">
                <label class="form-label required">Grade Level</label>
                <select class="form-select @error('gradeLevel') is-invalid @enderror" name="gradeLevel" id="gradeLevel" required>
                    <option value="">Select Grade Level</option>
                    <option value="kindergarten" {{ old('gradeLevel') == 'kindergarten' ? 'selected' : '' }}>Kindergarten</option>
                    <option value="grade1" {{ old('gradeLevel') == 'grade1' ? 'selected' : '' }}>Grade 1</option>
                    <option value="grade2" {{ old('gradeLevel') == 'grade2' ? 'selected' : '' }}>Grade 2</option>
                    <option value="grade3" {{ old('gradeLevel') == 'grade3' ? 'selected' : '' }}>Grade 3</option>
                    <option value="grade4" {{ old('gradeLevel') == 'grade4' ? 'selected' : '' }}>Grade 4</option>
                    <option value="grade5" {{ old('gradeLevel') == 'grade5' ? 'selected' : '' }}>Grade 5</option>
                    <option value="grade6" {{ old('gradeLevel') == 'grade6' ? 'selected' : '' }}>Grade 6</option>
                </select>
                <div id="gradeAgeError" class="invalid-feedback" style="display: none;">
                    Your child's age is not appropriate for the selected grade level.
                </div>
                @error('gradeLevel')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>
</div>
        
    <!-- Student Information Section -->
    <div class="card mb-4">
        <div class="card-header bg-light">
            Student Information
        </div>
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-4">
                    <label for="firstName" class="form-label required">First Name</label>
                    <input type="text" class="form-control @error('firstName') is-invalid @enderror" id="firstName" name="firstName" value="{{ old('firstName') }}" required>
                    @error('firstName')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="middleName" class="form-label">Middle Name</label>
                    <input type="text" class="form-control @error('middleName') is-invalid @enderror" id="middleName" name="middleName" value="{{ old('middleName') }}">
                    @error('middleName')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="lastName" class="form-label required">Last Name</label>
                    <input type="text" class="form-control @error('lastName') is-invalid @enderror" id="lastName" name="lastName" value="{{ old('lastName') }}" required>
                    @error('lastName')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="col-md-4">
                    <label for="dateOfBirth" class="form-label required">Date of Birth</label>
                    <input type="date" class="form-control @error('dateOfBirth') is-invalid @enderror" id="dateOfBirth" name="dateOfBirth" value="{{ old('dateOfBirth') }}" required>
                    @error('dateOfBirth')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="gender" class="form-label required">Gender</label>
                    <select class="form-select @error('gender') is-invalid @enderror" id="gender" name="gender" required>
                        <option value="">Select</option>
                        <option value="male" {{ old('gender') == 'male' ? 'selected' : '' }}>Male</option>
                        <option value="female" {{ old('gender') == 'female' ? 'selected' : '' }}>Female</option>
                        <option value="other" {{ old('gender') == 'other' ? 'selected' : '' }}>Other</option>
                    </select>
                    @error('gender')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="studentEmail" class="form-label">Student Email (if applicable)</label>
                    <input type="email" class="form-control @error('studentEmail') is-invalid @enderror" id="studentEmail" name="studentEmail" value="{{ old('studentEmail') }}">
                    @error('studentEmail')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="col-md-6">
                    <label for="previousSchool" class="form-label">Previous School (for transferees)</label>
                    <input type="text" class="form-control @error('previousSchool') is-invalid @enderror" id="previousSchool" name="previousSchool" value="{{ old('previousSchool') }}">
                    @error('previousSchool')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-6">
                    <label for="specialNeeds" class="form-label">Any Special Needs</label>
                    <input type="text" class="form-control @error('specialNeeds') is-invalid @enderror" id="specialNeeds" name="specialNeeds" value="{{ old('specialNeeds') }}">
                    @error('specialNeeds')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
        </div>
    </div>
        
    <!-- Parent/Guardian Information Section -->
    <div class="card mb-4">
        <div class="card-header bg-light">
            Parent/Guardian Information
        </div>
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-6">
                    <label for="parentName" class="form-label required">Parent/Guardian Full Name</label>
                    <input type="text" class="form-control @error('parentName') is-invalid @enderror" id="parentName" name="parentName" value="{{ old('parentName') }}" required>
                    @error('parentName')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-6">
                    <label for="relationship" class="form-label required">Relationship to Student</label>
                    <select class="form-select @error('relationship') is-invalid @enderror" id="relationship" name="relationship" required>
                        <option value="">Select</option>
                        <option value="mother" {{ old('relationship') == 'mother' ? 'selected' : '' }}>Mother</option>
                        <option value="father" {{ old('relationship') == 'father' ? 'selected' : '' }}>Father</option>
                        <option value="guardian" {{ old('relationship') == 'guardian' ? 'selected' : '' }}>Guardian</option>
                        <option value="other" {{ old('relationship') == 'other' ? 'selected' : '' }}>Other</option>
                    </select>
                    @error('relationship')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="col-md-4">
                    <label for="mobileNumber" class="form-label required">Mobile Number</label>
                    <input type="tel" class="form-control @error('mobileNumber') is-invalid @enderror" id="mobileNumber" name="mobileNumber" value="{{ old('mobileNumber') }}" required>
                    @error('mobileNumber')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="landline" class="form-label">Landline (if available)</label>
                    <input type="tel" class="form-control @error('landline') is-invalid @enderror" id="landline" name="landline" value="{{ old('landline') }}">
                    @error('landline')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="email" class="form-label required">Email Address</label>
                    <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}" required>
                    @error('email')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="col-12">
                    <label for="address" class="form-label required">Complete Home Address</label>
                    <textarea class="form-control @error('address') is-invalid @enderror" id="address" name="address" rows="2" required>{{ old('address') }}</textarea>
                    @error('address')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
        </div>
    </div>
        
<!-- Emergency Contact Section -->
<div class="card mb-4">
        <div class="card-header bg-light">
            Emergency Contact
        </div>
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-4">
                    <label for="emergencyName" class="form-label required">Emergency Contact Name</label>
                    <input type="text" class="form-control @error('emergencyName') is-invalid @enderror" id="emergencyName" name="emergencyName" value="{{ old('emergencyName') }}" required>
                    @error('emergencyName')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="emergencyRelationship" class="form-label required">Relationship to Student</label>
                    <input type="text" class="form-control @error('emergencyRelationship') is-invalid @enderror" id="emergencyRelationship" name="emergencyRelationship" value="{{ old('emergencyRelationship') }}" required>
                    @error('emergencyRelationship')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="col-md-4">
                    <label for="emergencyPhone" class="form-label required">Contact Number</label>
                    <input type="tel" class="form-control @error('emergencyPhone') is-invalid @enderror" id="emergencyPhone" name="emergencyPhone" value="{{ old('emergencyPhone') }}" required>
                    @error('emergencyPhone')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
        </div>
    </div>
<!-- Required Documents Section -->
<div class="card mb-4">
    <div class="card-header bg-light">
        Required Documents
    </div>
    <div class="card-body">
        <p class="small text-muted mb-3">Please check the documents you have available and upload digital copies. The items in bold must be submitted to complete enrollment.</p>
        
        <div class="row mb-3">
            <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input @error('docs_birthCertificate') is-invalid @enderror" type="checkbox" id="birthCertificate" name="docs_birthCertificate" {{ old('docs_birthCertificate') ? 'checked' : '' }}>
                    <label class="form-check-label critical-docs" for="birthCertificate">
                        Birth Certificate (REQUIRED)
                    </label>
                </div>
                <div class="mt-2">
                    <label for="birthCertificateFile" class="form-label">Upload Birth Certificate</label>
                    <input class="form-control @error('birthCertificateFile') is-invalid @enderror" type="file" id="birthCertificateFile" name="birthCertificateFile" accept=".jpeg,.jpg,.png,.pdf">
                    @error('birthCertificateFile')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                    <small class="text-muted">Accepted formats: JPEG, JPG, PNG, PDF (Max 5MB)</small>
                </div>
            </div>
            
            <div class="col-md-6" id="reportCardSection">
                <div class="form-check">
                    <input class="form-check-input @error('docs_reportCard') is-invalid @enderror" type="checkbox" id="reportCard" name="docs_reportCard" {{ old('docs_reportCard') ? 'checked' : '' }}>
                    <label class="form-check-label critical-docs" for="reportCard">
                        Latest Report Card (REQUIRED)
                    </label>
                </div>
                <div class="mt-2">
                    <label for="reportCardFile" class="form-label">Upload Report Card</label>
                    <input class="form-control @error('reportCardFile') is-invalid @enderror" type="file" id="reportCardFile" name="reportCardFile" accept=".jpeg,.jpg,.png,.pdf">
                    @error('reportCardFile')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                    <small class="text-muted">Accepted formats: JPEG, JPG, PNG, PDF (Max 5MB)</small>
                </div>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-6" id="torSection">
                <div class="form-check">
                    <input class="form-check-input @error('docs_tor') is-invalid @enderror" type="checkbox" id="tor" name="docs_tor" {{ old('docs_tor') ? 'checked' : '' }}>
                    <label class="form-check-label" for="tor">
                        Transcript of Records/Form 137 (for transferees)
                    </label>
                </div>
                <div class="mt-2">
                    <label for="torFile" class="form-label">Upload Transcript of Records</label>
                    <input class="form-control @error('torFile') is-invalid @enderror" type="file" id="torFile" name="torFile" accept=".jpeg,.jpg,.png,.pdf">
                    @error('torFile')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                    <small class="text-muted">Accepted formats: JPEG, JPG, PNG, PDF (Max 5MB)</small>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input @error('docs_brgyResidency') is-invalid @enderror" type="checkbox" id="brgyResidency" name="docs_brgyResidency" {{ old('docs_brgyResidency') ? 'checked' : '' }}>
                    <label class="form-check-label" for="brgyResidency">
                        Barangay Residency Certificate
                    </label>
                </div>
                <div class="mt-2">
                    <label for="brgyResidencyFile" class="form-label">Upload Barangay Certificate</label>
                    <input class="form-control @error('brgyResidencyFile') is-invalid @enderror" type="file" id="brgyResidencyFile" name="brgyResidencyFile" accept=".jpeg,.jpg,.png,.pdf">
                    @error('brgyResidencyFile')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                    <small class="text-muted">Accepted formats: JPEG, JPG, PNG, PDF (Max 5MB)</small>
                </div>
            </div>
        </div>
        
        <div class="row mb-3">         
            <div class="col-md-6">
                <div class="form-check">
                    <input class="form-check-input @error('docs_idPictures') is-invalid @enderror" type="checkbox" id="idPictures" name="docs_idPictures" {{ old('docs_idPictures') ? 'checked' : '' }}>
                    <label class="form-check-label" for="idPictures">
                        2×2 ID Pictures (4 copies)
                    </label>
                    @error('docs_idPictures')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                    <small class="d-block text-muted mt-1">Please bring physical copies during enrollment</small>
                </div>
            </div>
        </div>
        
        <p class="small text-muted mt-3" id="docRequirementNote">
            Note: Birth Certificate and Latest Report Card must be provided to complete the enrollment process.
        </p>
    </div>
</div>
    <!-- Terms Agreement -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="form-check">
                <input class="form-check-input @error('agreement') is-invalid @enderror" type="checkbox" id="agreement" name="agreement" {{ old('agreement') ? 'checked' : '' }} required>
                <label class="form-check-label required" for="agreement">
                    I certify that the information provided is true and correct. I authorize the school to verify all information submitted and to use this data for enrollment purposes.
                </label>
                @error('agreement')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>
        
    <!-- Submit Button -->
    <div class="text-center mb-5">
        <button type="submit" class="btn btn-primary btn-lg px-5">Submit Enrollment Form</button>
    </div>
    </form>

<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="reviewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="reviewModalLabel">Review Enrollment Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-warning">
          <i class="fas fa-exclamation-triangle me-2"></i> Please review all information carefully before submitting. Make sure all details are correct.
        </div>
        
        <!-- Enrollment Details Section -->
        <div class="card mb-3">
          <div class="card-header bg-light">
            <strong>Enrollment Details</strong>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <p><strong>Student Type:</strong> <span id="review-enrollmentStatus"></span></p>
              </div>
              <div class="col-md-6">
                <p><strong>Grade Level:</strong> <span id="review-gradeLevel"></span></p>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Student Information Section -->
        <div class="card mb-3">
          <div class="card-header bg-light">
            <strong>Student Information</strong>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <p><strong>First Name:</strong> <span id="review-firstName"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Middle Name:</strong> <span id="review-middleName"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Last Name:</strong> <span id="review-lastName"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <p><strong>Date of Birth:</strong> <span id="review-dateOfBirth"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Gender:</strong> <span id="review-gender"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Student Email:</strong> <span id="review-studentEmail"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <p><strong>Previous School:</strong> <span id="review-previousSchool"></span></p>
              </div>
              <div class="col-md-6">
                <p><strong>Special Needs:</strong> <span id="review-specialNeeds"></span></p>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Parent/Guardian Information Section -->
        <div class="card mb-3">
          <div class="card-header bg-light">
            <strong>Parent/Guardian Information</strong>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <p><strong>Parent/Guardian Name:</strong> <span id="review-parentName"></span></p>
              </div>
              <div class="col-md-6">
                <p><strong>Relationship:</strong> <span id="review-relationship"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <p><strong>Mobile Number:</strong> <span id="review-mobileNumber"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Landline:</strong> <span id="review-landline"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Email:</strong> <span id="review-email"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <p><strong>Address:</strong> <span id="review-address"></span></p>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Emergency Contact Section -->
        <div class="card mb-3">
          <div class="card-header bg-light">
            <strong>Emergency Contact</strong>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <p><strong>Name:</strong> <span id="review-emergencyName"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Relationship:</strong> <span id="review-emergencyRelationship"></span></p>
              </div>
              <div class="col-md-4">
                <p><strong>Contact Number:</strong> <span id="review-emergencyPhone"></span></p>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Documents Section -->
        <div class="card mb-3">
          <div class="card-header bg-light">
            <strong>Documents</strong>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <p><i class="fas fa-check-circle text-success me-2"></i><strong>Birth Certificate:</strong> <span id="review-birthCertificate"></span></p>
              </div>
              <div class="col-md-6">
                <p><i id="reportCardIcon" class="fas fa-check-circle text-success me-2"></i><strong>Report Card:</strong> <span id="review-reportCard"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <p><i id="torIcon" class="fas fa-check-circle text-success me-2"></i><strong>Transcript of Records:</strong> <span id="review-tor"></span></p>
              </div>
              <div class="col-md-6">
                <p><i id="brgyResidencyIcon" class="fas fa-check-circle text-success me-2"></i><strong>Barangay Residency:</strong> <span id="review-brgyResidency"></span></p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <p><i id="idPicturesIcon" class="fas fa-check-circle text-success me-2"></i><strong>ID Pictures:</strong> <span id="review-idPictures"></span></p>
              </div>
            </div>
          </div>
        </div>
        
        <div class="form-check mb-3">
          <input class="form-check-input" type="checkbox" id="confirmAccuracy" required>
          <label class="form-check-label" for="confirmAccuracy">
            <strong>I confirm that all the information provided above is accurate and complete.</strong>
          </label>
          <div class="invalid-feedback">
            You must confirm that all information is accurate before submitting.
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="editInfoButton">Edit Information</button>
        <button type="button" class="btn btn-secondary" id="finalSubmitBtn" disabled>Submit Enrollment</button>
      </div>
    </div>
  </div>
</div>
</div>

    @include('layouts.partials.footer')

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/nav.active.js"></script>
    <script src="js/sres-scroll.js"></script>
    <script src="js/enrollment.js"></script>
    <script src="js/enrollmentmodal.js"></script>
  </body>
</html>