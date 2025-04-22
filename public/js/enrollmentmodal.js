document.addEventListener('DOMContentLoaded', function() {
    // Get the form and UI elements
    const enrollmentForm = document.getElementById('enrollmentForm');
    const submitButton = enrollmentForm ? enrollmentForm.querySelector('button[type="submit"]') : null;
    const reviewModal = document.getElementById('reviewModal');
    const modalInstance = reviewModal ? new bootstrap.Modal(reviewModal) : null;
    const finalSubmitBtn = document.getElementById('finalSubmitBtn');
    const confirmAccuracyCheckbox = document.getElementById('confirmAccuracy');
    const editInfoButton = document.getElementById('editInfoButton');
    
    // Create a map of select fields to display readable values
    const selectValueMaps = {
        'enrollmentStatus': {
            'new': 'New Student',
            'transferee': 'Transferee',
            'returnee': 'Returnee'
        },
        'gradeLevel': {
            'kindergarten': 'Kindergarten',
            'grade1': 'Grade 1',
            'grade2': 'Grade 2',
            'grade3': 'Grade 3',
            'grade4': 'Grade 4',
            'grade5': 'Grade 5',
            'grade6': 'Grade 6'
        },
        'gender': {
            'male': 'Male',
            'female': 'Female',
            'other': 'Other'
        },
        'relationship': {
            'mother': 'Mother',
            'father': 'Father',
            'guardian': 'Guardian',
            'other': 'Other'
        }
    };
    
    // Store form values when opening modal
    let formData = {};
    
    // Function to format date from YYYY-MM-DD to MM/DD/YYYY
    function formatDate(dateString) {
        if (!dateString) return '';
        const date = new Date(dateString);
        return date.toLocaleDateString('en-US', {
            month: '2-digit',
            day: '2-digit',
            year: 'numeric'
        });
    }
    
    // Function to get value based on input type
    function getInputValue(name) {
        // For radio buttons
        if (name === 'enrollmentStatus') {
            const radioValue = document.querySelector(`input[name="enrollmentStatus"]:checked`);
            return radioValue ? selectValueMaps.enrollmentStatus[radioValue.value] : '';
        }
        
        // For select elements
        const selectElement = document.getElementById(name);
        if (selectElement && selectElement.tagName === 'SELECT') {
            const value = selectElement.value;
            return selectValueMaps[name] && selectValueMaps[name][value] ? 
                   selectValueMaps[name][value] : value;
        }
        
        // For date inputs
        if (name === 'dateOfBirth') {
            const dateValue = document.getElementById(name).value;
            return formatDate(dateValue);
        }
        
        // For checkboxes
        if (name.startsWith('docs_')) {
            const checkboxElem = document.getElementById(name.replace('docs_', ''));
            return checkboxElem && checkboxElem.checked ? 'Provided' : 'Not Provided';
        }
        
        // For file inputs
        if (name.endsWith('File')) {
            const fileElem = document.getElementById(name);
            if (fileElem && fileElem.files && fileElem.files.length > 0) {
                return fileElem.files[0].name;
            }
            return 'No file selected';
        }
        
        // For regular text inputs
        const inputElement = document.getElementById(name);
        return inputElement ? inputElement.value : '';
    }
    
    // Function to populate the review modal with form data
    function populateReviewModal() {
        // Store current form data before showing modal
        storeFormData();
        
        // Enrollment Details
        document.getElementById('review-enrollmentStatus').textContent = getInputValue('enrollmentStatus');
        document.getElementById('review-gradeLevel').textContent = getInputValue('gradeLevel');
        
        // Student Information
        document.getElementById('review-firstName').textContent = getInputValue('firstName');
        document.getElementById('review-middleName').textContent = getInputValue('middleName') || 'N/A';
        document.getElementById('review-lastName').textContent = getInputValue('lastName');
        document.getElementById('review-dateOfBirth').textContent = getInputValue('dateOfBirth');
        document.getElementById('review-gender').textContent = getInputValue('gender');
        document.getElementById('review-studentEmail').textContent = getInputValue('studentEmail') || 'N/A';
        document.getElementById('review-previousSchool').textContent = getInputValue('previousSchool') || 'N/A';
        document.getElementById('review-specialNeeds').textContent = getInputValue('specialNeeds') || 'N/A';
        
        // Parent/Guardian Information
        document.getElementById('review-parentName').textContent = getInputValue('parentName');
        document.getElementById('review-relationship').textContent = getInputValue('relationship');
        document.getElementById('review-mobileNumber').textContent = getInputValue('mobileNumber');
        document.getElementById('review-landline').textContent = getInputValue('landline') || 'N/A';
        document.getElementById('review-email').textContent = getInputValue('email');
        document.getElementById('review-address').textContent = getInputValue('address');
        
        // Emergency Contact
        document.getElementById('review-emergencyName').textContent = getInputValue('emergencyName');
        document.getElementById('review-emergencyRelationship').textContent = getInputValue('emergencyRelationship');
        document.getElementById('review-emergencyPhone').textContent = getInputValue('emergencyPhone');
        
        // Documents
        document.getElementById('review-birthCertificate').textContent = getInputValue('birthCertificateFile');
        document.getElementById('review-reportCard').textContent = getInputValue('reportCardFile');
        document.getElementById('review-tor').textContent = getInputValue('torFile');
        document.getElementById('review-brgyResidency').textContent = getInputValue('brgyResidencyFile');
        document.getElementById('review-idPictures').textContent = getInputValue('docs_idPictures');
        
        // Update document icons
        updateDocumentIcons();
    }
    
    // Function to store form data
    function storeFormData() {
        formData = {};
        if (!enrollmentForm) return;
        
        const formElements = enrollmentForm.elements;
        for (let i = 0; i < formElements.length; i++) {
            const element = formElements[i];
            if (element.name) {
                if (element.type === 'checkbox' || element.type === 'radio') {
                    if (element.checked) {
                        formData[element.name] = true;
                    }
                } else if (element.type === 'file') {
                    // Skip file inputs as they can't be programmatically set
                    continue;
                } else {
                    formData[element.name] = element.value;
                }
            }
        }
    }
    
    // Function to update document icons based on availability
    function updateDocumentIcons() {
        // Toggle visibility of document icons based on availability
        const documentChecks = [
            { id: 'reportCardIcon', checkbox: 'reportCard' },
            { id: 'torIcon', checkbox: 'tor' },
            { id: 'brgyResidencyIcon', checkbox: 'brgyResidency' },
            { id: 'idPicturesIcon', checkbox: 'idPictures' }
        ];
        
        documentChecks.forEach(item => {
            const icon = document.getElementById(item.id);
            const checkbox = document.getElementById(item.checkbox);
            
            if (icon && checkbox) {
                // Change to check or X icon based on whether document is provided
                if (checkbox.checked) {
                    icon.className = 'fas fa-check-circle text-success me-2';
                } else {
                    icon.className = 'fas fa-times-circle text-secondary me-2';
                }
            }
        });
    }
    
    // Function to show bootstrap alert in modal
    function showModalAlert(message, type = 'warning') {
        // Remove any existing alerts
        const existingAlert = document.querySelector('.modal-body .alert-validation');
        if (existingAlert) {
            existingAlert.remove();
        }
        
        // Create new alert
        const alertDiv = document.createElement('div');
        alertDiv.className = `alert alert-${type} alert-validation alert-dismissible fade show`;
        alertDiv.role = 'alert';
        
        // Add appropriate icon based on alert type
        let icon = 'exclamation-triangle';
        if (type === 'success') icon = 'check-circle';
        if (type === 'danger') icon = 'exclamation-circle';
        
        alertDiv.innerHTML = `
            <i class="fas fa-${icon} me-2"></i> ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        `;
        
        // Insert at top of modal body
        const modalBody = document.querySelector('.modal-body');
        if (modalBody) {
            // Insert after the first warning alert
            const firstAlert = modalBody.querySelector('.alert');
            if (firstAlert) {
                firstAlert.after(alertDiv);
            } else {
                modalBody.prepend(alertDiv);
            }
        }
        
        // Auto-dismiss after 5 seconds
        setTimeout(() => {
            if (alertDiv && alertDiv.parentNode) {
                alertDiv.classList.remove('show');
                setTimeout(() => alertDiv.remove(), 150);
            }
        }, 5000);
    }
    
    // Track whether we're submitting for real
    let submittingForReal = false;

    // Set up event listeners only if elements exist
    if (confirmAccuracyCheckbox && finalSubmitBtn) {
        // Toggle the final submit button based on confirmation checkbox
        confirmAccuracyCheckbox.addEventListener('change', function() {
            finalSubmitBtn.disabled = !this.checked;
        });
        
        // Add click event to the finalize button that checks the confirmation
        finalSubmitBtn.addEventListener('click', function(event) {
            if (!confirmAccuracyCheckbox.checked) {
                event.preventDefault();
                showModalAlert('Please confirm that all information is accurate by checking the confirmation box.', 'danger');
                
                // Highlight the checkbox
                const checkboxParent = confirmAccuracyCheckbox.parentElement;
                if (checkboxParent) {
                    checkboxParent.classList.add('was-validated');
                    checkboxParent.style.transition = 'background-color 0.3s';
                    checkboxParent.style.backgroundColor = 'rgba(220, 53, 69, 0.1)';
                    checkboxParent.style.padding = '10px';
                    checkboxParent.style.borderRadius = '4px';
                    
                    // Remove highlight after animation
                    setTimeout(() => {
                        checkboxParent.style.backgroundColor = '';
                        checkboxParent.style.padding = '';
                    }, 2000);
                }
                
                // Scroll to checkbox
                confirmAccuracyCheckbox.scrollIntoView({ behavior: 'smooth', block: 'center' });
                return false;
            }
            
            // If checkbox is checked, process as normal
            submittingForReal = true;
            
            // Create hidden field to indicate confirmation
            const submitter = document.createElement('input');
            submitter.type = 'hidden';
            submitter.name = 'confirmed';
            submitter.value = 'true';
            enrollmentForm.appendChild(submitter);
            
            // Submit the form normally
            enrollmentForm.submit();
        });
    }

    if (enrollmentForm && submitButton) {
        // Handle the form submission to show the review modal instead
        enrollmentForm.addEventListener('submit', function(event) {
            if (!submittingForReal) {
                event.preventDefault(); // Only prevent default if we're showing modal
                if (this.checkValidity()) {
                    populateReviewModal();
                    if (modalInstance) {
                        modalInstance.show();
                    }
                } else {
                    this.classList.add('was-validated');
                }
            }
        });
    }
    
    // Fix the edit button functionality
    if (editInfoButton && reviewModal) {
        editInfoButton.addEventListener('click', function() {
            // Close the modal - this is the key fix
            if (modalInstance) {
                modalInstance.hide();
            } else {
                // Fallback approach if modalInstance isn't working
                const bsModal = bootstrap.Modal.getInstance(reviewModal);
                if (bsModal) {
                    bsModal.hide();
                } else {
                    // Manual hide as last resort
                    $(reviewModal).modal('hide');
                    reviewModal.classList.remove('show');
                    reviewModal.style.display = 'none';
                    document.body.classList.remove('modal-open');
                    const backdrop = document.querySelector('.modal-backdrop');
                    if (backdrop) {
                        backdrop.remove();
                    }
                }
            }
            
            // Wait for modal to fully close before scrolling
            setTimeout(function() {
                // Scroll to the form
                if (enrollmentForm) {
                    // Scroll to the top of the form with offset for navigation bar
                    const formOffset = enrollmentForm.getBoundingClientRect().top + window.pageYOffset;
                    window.scrollTo({
                        top: formOffset - 120,
                        behavior: 'smooth'
                    });
                    
                    // Apply a visual highlight to the form
                    enrollmentForm.style.transition = 'box-shadow 0.3s ease-in-out';
                    enrollmentForm.style.boxShadow = '0 0 0 4px rgba(13, 110, 253, 0.5)';
                    
                    // Remove highlight after 2 seconds
                    setTimeout(function() {
                        enrollmentForm.style.boxShadow = '';
                    }, 2000);
                    
                    // Focus the first input field
                    const firstInput = enrollmentForm.querySelector('input, select, textarea');
                    if (firstInput) {
                        firstInput.focus();
                    }
                }
            }, 400); // Delay ensures modal is fully closed
        });
    }
    
    if (reviewModal) {
        // Reset the confirm accuracy checkbox when modal is hidden
        reviewModal.addEventListener('hidden.bs.modal', function() {
            if (confirmAccuracyCheckbox) {
                confirmAccuracyCheckbox.checked = false;
                if (finalSubmitBtn) {
                    finalSubmitBtn.disabled = true;
                }
                
                // Remove any validation alerts when modal is closed
                const alerts = document.querySelectorAll('.modal-body .alert-validation');
                alerts.forEach(alert => alert.remove());
                
                // Remove any validation styling
                const checkboxParent = confirmAccuracyCheckbox.parentElement;
                if (checkboxParent) {
                    checkboxParent.classList.remove('was-validated');
                    checkboxParent.style.backgroundColor = '';
                    checkboxParent.style.padding = '';
                }
            }
        });
    }

    // Also handle Bootstrap's close button and backdrop click
    const closeButton = reviewModal ? reviewModal.querySelector('.btn-close') : null;
    if (closeButton) {
        closeButton.addEventListener('click', function() {
            if (modalInstance) {
                modalInstance.hide();
            }
        });
    }
});