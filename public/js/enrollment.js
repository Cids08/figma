// This script handles the dynamic behavior of the enrollment form based on the selected enrollment status and validates the age against the selected grade level.
// It also manages the visibility of document requirements based on the enrollment status.
document.addEventListener('DOMContentLoaded', function() {
    // Elements
    const newStudentRadio = document.getElementById('enrollmentStatus_new');
    const transfereeRadio = document.getElementById('enrollmentStatus_transferee');
    const returneeRadio = document.getElementById('enrollmentStatus_returnee');
    const gradeLevelSelect = document.getElementById('gradeLevel');
    const dateOfBirthInput = document.getElementById('dateOfBirth');
    const reportCardSection = document.getElementById('reportCardSection');
    const torSection = document.getElementById('torSection');
    const docRequirementNote = document.getElementById('docRequirementNote');
    const gradeAgeError = document.getElementById('gradeAgeError');
    
    // File upload elements
    const birthCertificateFile = document.getElementById('birthCertificateFile');
    const reportCardFile = document.getElementById('reportCardFile');
    const torFile = document.getElementById('torFile');
    const brgyResidencyFile = document.getElementById('brgyResidencyFile');
    
    // Checkboxes
    const birthCertificateCheckbox = document.getElementById('birthCertificate');
    const reportCardCheckbox = document.getElementById('reportCard');
    const torCheckbox = document.getElementById('tor');
    const brgyResidencyCheckbox = document.getElementById('brgyResidency');
    const idPicturesCheckbox = document.getElementById('idPictures');
    
    // Create a debug logger
    function logDebug(message) {
        console.log(`[Enrollment Form] ${message}`);
    }
    
    // Function to handle enrollment status change
    function handleEnrollmentStatusChange() {
        const isNewStudent = newStudentRadio.checked;
        const isTransferee = transfereeRadio.checked;
        const isReturnee = returneeRadio.checked;
        
        logDebug(`Enrollment status changed: New: ${isNewStudent}, Transferee: ${isTransferee}, Returnee: ${isReturnee}`);
        
        // Reset grade level options
        for (let i = 0; i < gradeLevelSelect.options.length; i++) {
            gradeLevelSelect.options[i].style.display = '';
        }
        
        // For new students, only Kindergarten and Grade 1 are available
        if (isNewStudent) {
            for (let i = 0; i < gradeLevelSelect.options.length; i++) {
                const option = gradeLevelSelect.options[i];
                if (option.value !== 'kindergarten' && option.value !== 'grade1' && option.value !== '') {
                    option.style.display = 'none';
                }
            }
            
            // Update document requirements for new students
            reportCardSection.style.display = 'none';
            torSection.style.display = 'none';
            docRequirementNote.textContent = 'Note: Birth Certificate must be submitted to the school to complete the enrollment process.';
            
            // Remove required attributes from hidden sections
            if (reportCardFile) {
                reportCardFile.removeAttribute('required');
                reportCardFile.classList.remove('is-invalid');
            }
            if (torFile) {
                torFile.removeAttribute('required');
                torFile.classList.remove('is-invalid');
            }
            
            // Uncheck hidden checkboxes
            if (reportCardCheckbox) reportCardCheckbox.checked = false;
            if (torCheckbox) torCheckbox.checked = false;
        } else {
            // For transferees and returnees, all grade levels are available
            
            // Update document requirements
            if (isTransferee) {
                reportCardSection.style.display = '';
                torSection.style.display = '';
                docRequirementNote.textContent = 'Note: Birth Certificate and Latest Report Card must be provided to complete the enrollment process.';
                
                // Make report card and TOR required for transferees
                if (reportCardFile && reportCardCheckbox && reportCardCheckbox.checked) {
                    reportCardFile.setAttribute('required', 'required');
                }
                if (torFile && torCheckbox && torCheckbox.checked) {
                    torFile.setAttribute('required', 'required');
                }
            } else if (isReturnee) {
                reportCardSection.style.display = 'none'; // Hide report card for returnees
                torSection.style.display = 'none';
                docRequirementNote.textContent = 'Note: Birth Certificate must be submitted to the school to complete the enrollment process.';
                
                // Remove required attributes from hidden sections
                if (reportCardFile) {
                    reportCardFile.removeAttribute('required');
                    reportCardFile.classList.remove('is-invalid');
                }
                if (torFile) {
                    torFile.removeAttribute('required');
                    torFile.classList.remove('is-invalid');
                }
                
                // Uncheck hidden checkboxes
                if (reportCardCheckbox) reportCardCheckbox.checked = false;
                if (torCheckbox) torCheckbox.checked = false;
            }
        }
        
        // Reset grade level if the current selection is not available
        if (isNewStudent && gradeLevelSelect.value !== 'kindergarten' && gradeLevelSelect.value !== 'grade1' && gradeLevelSelect.value !== '') {
            gradeLevelSelect.value = '';
        }
        
        // Validate the form state after changing enrollment status
        validateDocumentRequirements();
    }
    
    // Function to validate age against grade level
    function validateAgeForGradeLevel() {
        if (!dateOfBirthInput.value || !gradeLevelSelect.value) {
            gradeAgeError.style.display = 'none';
            dateOfBirthInput.classList.remove('is-invalid');
            gradeLevelSelect.classList.remove('is-invalid');
            return;
        }
        
        const birthDate = new Date(dateOfBirthInput.value);
        const today = new Date();
        const currentYear = today.getFullYear();
        
        // Calculate age
        let age = currentYear - birthDate.getFullYear();
        const monthDiff = today.getMonth() - birthDate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
            age--; // Not yet had birthday this year
        }
        
        logDebug(`Validating age: ${age} years old for grade level: ${gradeLevelSelect.value}`);
        
        let isAgeAppropriate = true;
        let minimumAge = 5; // Default minimum age (for kindergarten)
        
        // Check age against grade level
        switch(gradeLevelSelect.value) {
            case 'kindergarten':
                minimumAge >= 5;
                break;
            case 'grade1':
                minimumAge >= 6;
                break;
            case 'grade2':
                minimumAge >= 7;
                break;
            case 'grade3':
                minimumAge >= 8;
                break;
            case 'grade4':
                minimumAge >= 9;
                break;
            case 'grade5':
                minimumAge >= 10;
                break;
            case 'grade6':
                minimumAge >= 11;
                break;
        }
        
        isAgeAppropriate = (age >= minimumAge);
        logDebug(`Age appropriate: ${isAgeAppropriate} (minimum age: ${minimumAge})`);
        
        // Show/hide error message
        gradeAgeError.style.display = isAgeAppropriate ? 'none' : 'block';
        
        // Add or remove is-invalid class
        if (!isAgeAppropriate) {
            dateOfBirthInput.classList.add('is-invalid');
            gradeLevelSelect.classList.add('is-invalid');
        } else {
            dateOfBirthInput.classList.remove('is-invalid');
            gradeLevelSelect.classList.remove('is-invalid');
        }
    }
    
    // Function to check if a file is valid
    function isFileValid(file) {
        if (!file) return false;
        
        const maxSize = 5 * 1024 * 1024; // 5MB
        
        // Check file size
        if (file.size > maxSize) {
            return false;
        }
        
        // Check file type
        const fileName = file.name.toLowerCase();
        const fileType = file.type;
        
        const validExtensions = ['.jpeg', '.jpg', '.png', '.pdf'];
        const validMimeTypes = ['image/jpeg', 'image/jpg', 'image/png', 'application/pdf'];
        
        // Check by extension
        for (let ext of validExtensions) {
            if (fileName.endsWith(ext)) {
                return true;
            }
        }
        
        // Also check by MIME type
        for (let mime of validMimeTypes) {
            if (fileType === mime) {
                return true;
            }
        }
        
        return false;
    }
    
    // Function to validate document requirements based on current form state
    function validateDocumentRequirements() {
        // Check if birth certificate is required
        if (birthCertificateCheckbox) {
            const isRequired = true; // Birth certificate is always required
            birthCertificateCheckbox.setAttribute('required', isRequired);
            if (birthCertificateFile) {
                if (birthCertificateCheckbox.checked) {
                    birthCertificateFile.removeAttribute('disabled');
                    birthCertificateFile.setAttribute('required', 'required');
                } else {
                    birthCertificateFile.setAttribute('disabled', 'disabled');
                    birthCertificateFile.removeAttribute('required');
                }
            }
        }
        
        // Check if report card is required (for transferees)
        if (reportCardCheckbox && reportCardFile) {
            const isVisible = reportCardSection.style.display !== 'none';
            if (isVisible) {
                if (reportCardCheckbox.checked) {
                    reportCardFile.removeAttribute('disabled');
                    reportCardFile.setAttribute('required', 'required');
                } else {
                    reportCardFile.setAttribute('disabled', 'disabled');
                    reportCardFile.removeAttribute('required');
                }
            } else {
                reportCardFile.setAttribute('disabled', 'disabled');
                reportCardFile.removeAttribute('required');
                reportCardCheckbox.removeAttribute('required');
            }
        }
        
        // Check if TOR is required (for transferees)
        if (torCheckbox && torFile) {
            const isVisible = torSection.style.display !== 'none';
            if (isVisible) {
                if (torCheckbox.checked) {
                    torFile.removeAttribute('disabled');
                    torFile.setAttribute('required', 'required');
                } else {
                    torFile.setAttribute('disabled', 'disabled');
                    torFile.removeAttribute('required');
                }
            } else {
                torFile.setAttribute('disabled', 'disabled');
                torFile.removeAttribute('required');
                torCheckbox.removeAttribute('required');
            }
        }
        
        // Check if barangay residency certificate is required
        if (brgyResidencyCheckbox && brgyResidencyFile) {
            if (brgyResidencyCheckbox.checked) {
                brgyResidencyFile.removeAttribute('disabled');
                brgyResidencyFile.setAttribute('required', 'required');
            } else {
                brgyResidencyFile.setAttribute('disabled', 'disabled');
                brgyResidencyFile.removeAttribute('required');
            }
        }
    }
    
    // Function to setup file input validation
    function setupFileValidation(fileInput) {
        if (!fileInput) return;
        
        logDebug(`Setting up validation for file input: ${fileInput.id}`);
        
        // Clear any existing event listeners
        const newFileInput = fileInput.cloneNode(true);
        fileInput.parentNode.replaceChild(newFileInput, fileInput);
        
        // Add change event listener
        newFileInput.addEventListener('change', function() {
            const maxSize = 5 * 1024 * 1024; // 5MB
            
            // Remove any previous validation errors
            this.classList.remove('is-invalid');
            const feedbackElement = this.nextElementSibling;
            if (feedbackElement && feedbackElement.classList.contains('invalid-feedback')) {
                feedbackElement.style.display = 'none';
            }
            
            if (this.files && this.files.length > 0) {
                const file = this.files[0];
                logDebug(`File selected for ${this.id}: ${file.name} (${file.size} bytes, ${file.type})`);
                
                // Check file size
                if (file.size > maxSize) {
                    this.value = ''; // Clear the input
                    this.classList.add('is-invalid');
                    alert('File size exceeds 5MB limit. Please select a smaller file.');
                    return;
                }
                
                // Check file type
                const fileName = file.name.toLowerCase();
                const fileType = file.type;
                
                const validExtensions = ['.jpeg', '.jpg', '.png', '.pdf'];
                const validMimeTypes = ['image/jpeg', 'image/jpg', 'image/png', 'application/pdf'];
                
                let isValidFile = false;
                
                // Check by extension
                for (let ext of validExtensions) {
                    if (fileName.endsWith(ext)) {
                        isValidFile = true;
                        break;
                    }
                }
                
                // Also check by MIME type
                if (!isValidFile) {
                    for (let mime of validMimeTypes) {
                        if (fileType === mime) {
                            isValidFile = true;
                            break;
                        }
                    }
                }
                
                if (!isValidFile) {
                    this.value = ''; // Clear the input
                    this.classList.add('is-invalid');
                    alert('Invalid file type. Please select only JPEG, JPG, PNG, or PDF');
                } else {
                    logDebug(`Valid file detected for ${this.id}`);
                }
            }
        });
        
        return newFileInput;
    }
    
    // Function to toggle file inputs based on checkbox state
    function setupCheckboxToggle(checkbox, fileInput) {
        if (!checkbox || !fileInput) return;
        
        checkbox.addEventListener('change', function() {
            logDebug(`Checkbox ${checkbox.id} changed: ${this.checked}`);
            
            if (this.checked) {
                fileInput.removeAttribute('disabled');
                // Only set as required if the parent section is visible
                const parentSection = fileInput.closest('.card-body');
                const isVisible = parentSection ? 
                  window.getComputedStyle(parentSection).display !== 'none' : true;
                
                if (isVisible) {
                    fileInput.setAttribute('required', 'required');
                }
            } else {
                fileInput.setAttribute('disabled', 'disabled');
                fileInput.value = ''; // Clear any selected file
                fileInput.removeAttribute('required');
                fileInput.classList.remove('is-invalid'); // Remove any error styling
            }
            
            // Validate the form after changing checkbox state
            validateDocumentRequirements();
        });
        
        // Initialize on page load
        if (checkbox.checked) {
            fileInput.removeAttribute('disabled');
            // Only set as required if the parent section is visible
            const parentSection = fileInput.closest('.card-body');
            const isVisible = parentSection ? 
              window.getComputedStyle(parentSection).display !== 'none' : true;
            
            if (isVisible) {
                fileInput.setAttribute('required', 'required');
            }
        } else {
            fileInput.setAttribute('disabled', 'disabled');
            fileInput.removeAttribute('required');
        }
    }
    
    // Setup form submission handler
    const enrollmentForm = document.querySelector('form');
    if (enrollmentForm) {
        enrollmentForm.addEventListener('submit', function(event) {
            logDebug('Form submission attempted');
            
            // Create a variable to track whether we should prevent submission
            let hasErrors = false;
            
            // Remove any existing error alert
            let errorAlert = document.querySelector('.alert-danger');
            if (errorAlert) {
                errorAlert.style.display = 'none';
                const ul = errorAlert.querySelector('ul');
                if (ul) ul.innerHTML = '';
            }
            
            // Check birth certificate if it's required and checked
            if (birthCertificateCheckbox && birthCertificateCheckbox.checked) {
                if (birthCertificateFile && !birthCertificateFile.disabled) {
                    logDebug(`Checking birth certificate file: ${birthCertificateFile.files ? 
                        birthCertificateFile.files.length + ' files' : 'no files'}`);
                    
                    // Check if file is actually there and valid
                    if (!birthCertificateFile.files || birthCertificateFile.files.length === 0) {
                        birthCertificateFile.classList.add('is-invalid');
                        hasErrors = true;
                        logDebug('Birth certificate file required but missing');
                    }
                }
            }
            
            // Check report card if it's visible, required and checked
            if (reportCardSection.style.display !== 'none' && reportCardCheckbox && reportCardCheckbox.checked) {
                if (reportCardFile && !reportCardFile.disabled) {
                    logDebug(`Checking report card file: ${reportCardFile.files ? 
                        reportCardFile.files.length + ' files' : 'no files'}`);
                    
                    if (!reportCardFile.files || reportCardFile.files.length === 0) {
                        reportCardFile.classList.add('is-invalid');
                        hasErrors = true;
                        logDebug('Report card file required but missing');
                    }
                }
            }
            
            // Check TOR if it's visible, required and checked
            if (torSection.style.display !== 'none' && torCheckbox && torCheckbox.checked) {
                if (torFile && !torFile.disabled) {
                    logDebug(`Checking TOR file: ${torFile.files ? 
                        torFile.files.length + ' files' : 'no files'}`);
                    
                    if (!torFile.files || torFile.files.length === 0) {
                        torFile.classList.add('is-invalid');
                        hasErrors = true;
                        logDebug('TOR file required but missing');
                    }
                }
            }
            
            // Check barangay residency if it's checked
            if (brgyResidencyCheckbox && brgyResidencyCheckbox.checked) {
                if (brgyResidencyFile && !brgyResidencyFile.disabled) {
                    logDebug(`Checking barangay residency file: ${brgyResidencyFile.files ? 
                        brgyResidencyFile.files.length + ' files' : 'no files'}`);
                    
                    if (!brgyResidencyFile.files || brgyResidencyFile.files.length === 0) {
                        brgyResidencyFile.classList.add('is-invalid');
                        hasErrors = true;
                        logDebug('Barangay residency file required but missing');
                    }
                }
            }
            
            // Check age validation
            if (gradeAgeError && gradeAgeError.style.display === 'block') {
                hasErrors = true;
                logDebug('Age validation failed');
            }
            
            // If we have errors, prevent form submission and show error messages
            if (hasErrors) {
                event.preventDefault(); // Prevent form submission
                logDebug('Form has errors, preventing submission');
                
                // Create or show an error alert if it doesn't exist
                if (!errorAlert) {
                    errorAlert = document.createElement('div');
                    errorAlert.className = 'alert alert-danger mt-3';
                    errorAlert.innerHTML = '<p>Please correct the following errors:</p><ul></ul>';
                    enrollmentForm.prepend(errorAlert);
                } else {
                    errorAlert.style.display = 'block';
                    const ul = errorAlert.querySelector('ul');
                    if (ul) ul.innerHTML = '';
                }
                
                // Add specific errors to the list
                const errorList = errorAlert.querySelector('ul');
                
                // Add specific error messages
                if (birthCertificateFile && birthCertificateFile.classList.contains('is-invalid')) {
                    const li = document.createElement('li');
                    li.textContent = 'Please select a birth certificate file.';
                    errorList.appendChild(li);
                }
                
                if (reportCardFile && reportCardFile.classList.contains('is-invalid')) {
                    const li = document.createElement('li');
                    li.textContent = 'Please select a report card file.';
                    errorList.appendChild(li);
                }
                
                if (torFile && torFile.classList.contains('is-invalid')) {
                    const li = document.createElement('li');
                    li.textContent = 'Please select a transcript of records file.';
                    errorList.appendChild(li);
                }
                
                if (brgyResidencyFile && brgyResidencyFile.classList.contains('is-invalid')) {
                    const li = document.createElement('li');
                    li.textContent = 'Please select a barangay residency certificate file.';
                    errorList.appendChild(li);
                }
                
                if (gradeAgeError && gradeAgeError.style.display === 'block') {
                    const li = document.createElement('li');
                    li.textContent = 'The child\'s age is not appropriate for the selected grade level.';
                    errorList.appendChild(li);
                }
                
                // Scroll to the error messages
                errorAlert.scrollIntoView({ behavior: 'smooth', block: 'start' });
            } else {
                logDebug('Form validation passed, submitting...');
            }
        });
    }
    
    // Apply file validation to all file inputs
    const fileInputs = document.querySelectorAll('input[type="file"]');
    fileInputs.forEach(input => {
        setupFileValidation(input);
    });
    
    // Setup checkbox/file input relationships
    setupCheckboxToggle(birthCertificateCheckbox, birthCertificateFile);
    setupCheckboxToggle(reportCardCheckbox, reportCardFile);
    setupCheckboxToggle(torCheckbox, torFile);
    setupCheckboxToggle(brgyResidencyCheckbox, brgyResidencyFile);
    if (document.getElementById('additionalDocs') && document.getElementById('additionalDocsFile')) {
        setupCheckboxToggle(document.getElementById('additionalDocs'), document.getElementById('additionalDocsFile'));
    }
    
    // Event listeners for enrollment status radios
    if (newStudentRadio) newStudentRadio.addEventListener('change', handleEnrollmentStatusChange);
    if (transfereeRadio) transfereeRadio.addEventListener('change', handleEnrollmentStatusChange);
    if (returneeRadio) returneeRadio.addEventListener('change', handleEnrollmentStatusChange);
    
    // Event listeners for grade level and DOB
    if (gradeLevelSelect) {
        gradeLevelSelect.addEventListener('change', validateAgeForGradeLevel);
    }
    if (dateOfBirthInput) {
        dateOfBirthInput.addEventListener('change', validateAgeForGradeLevel);
    }
    
    // Initialize based on current values
    handleEnrollmentStatusChange();
    validateAgeForGradeLevel();
    validateDocumentRequirements();
    
    logDebug('Enrollment form initialization complete');
});