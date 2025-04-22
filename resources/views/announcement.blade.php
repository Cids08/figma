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
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/style.css">
  
  <title>Announcement</title>

  <style>
        .announcement {
            border-left: 5px solid #6c757d;
            transition: transform 0.2s;
            margin-bottom: 1.5rem;
        }
        .announcement:hover {
            transform: translateX(5px);
        }
        .announcement-high {
            border-left-color: #dc3545;
        }
        .announcement-medium {
            border-left-color: #fd7e14;
        }
        .announcement-low {
            border-left-color: #20c997;
        }
        .filter-btn.active {
            background-color: #0d6efd !important;
            color: white !important;
        }
        .announcement-details {
            display: none;
            padding: 15px;
            background-color: #f8f9fa;
            border-top: 1px solid #dee2e6;
        }
        .color-legend {
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 5px;
            margin-top: 20px;
        }
        .color-indicator {
            display: inline-block;
            width: 20px;
            height: 20px;
            margin-right: 10px;
            vertical-align: middle;
        }
        h1 {
            margin-bottom: 1.5rem;
        }
        .detail-btn {
            background-color: #0d6efd;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 0.375rem 0.75rem;
            font-size: 0.875rem;
            transition: all 0.3s;
        }
        .detail-btn:hover {
            background-color: #0b5ed7;
            transform: translateY(-2px);
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        .detail-btn:active {
            transform: translateY(0);
            box-shadow: none;
        }
        @media (max-width: 767.98px) {
            .filter-btn-group {
                display: flex;
                flex-direction: column;
            }
            .filter-btn {
                margin-bottom: 0.5rem;
                border-radius: 4px !important;
            }
            .card-body {
                padding: 1rem;
            }
            .date-detail-container {
                flex-direction: column;
                align-items: start !important;
            }
            .date-detail-container .text-muted {
                margin-bottom: 0.75rem;
            }
        }
    </style>

</head>
<body>
    
    @include('layouts.partials.navbar')

    <diV class="banner" data-aos="fade-up" data-aos-delay="0">
          <div class="container">
            <div class="banner-content" data-aos="fade-up" data-aos-delay="0">
              <h1>Updates And Notices</h1>
              <p class="lead text">Get the latest information on school activities, achievements, and important reminders. Stay connected with our school community!</p>
            </div>
          </div>
        </div>
    <div>

    <div class="container py-4">
        <div class="row mb-4">
            <div class="col-md-12">
                <div class="btn-group filter-btn-group w-100">
                    <button class="btn btn-outline-primary filter-btn active" data-filter="all">All Announcements</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="enrollment">Enrollment</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="achievement">Achievements</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="general">General</button>
                </div>
            </div>
        </div>

        <div id="announcements-container">
            <!-- Enrollment Announcements -->
            <div class="announcement card announcement-high" data-category="enrollment" data-importance="high">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Fall 2025 Enrollment Now Open</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Registration for the Fall 2025 semester is now open. Secure your spot by submitting your application before May 15, 2025.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: April 1, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>Fall 2025 Enrollment Details:</h6>
                    <ul>
                        <li>Application deadline: May 15, 2025</li>
                        <li>Required documents: Transcripts, ID, Proof of residence</li>
                        <li>Application fee: $50 (waived for returning students)</li>
                        <li>Limited seats available for all programs</li>
                        <li>Early bird discount of 10% for applications submitted before April 30</li>
                        <li>Online applications preferred through the student portal</li>
                        <li>For assistance, contact admissions@school.edu or call (555) 123-4567</li>
                    </ul>
                </div>
            </div>

            <div class="announcement card announcement-medium" data-category="enrollment" data-importance="medium">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Scholarship Applications</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Merit-based and need-based scholarship applications for the upcoming academic year are now being accepted.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 25, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>Scholarship Information:</h6>
                    <p>Application deadline is April 30, 2025. The following scholarships are available:</p>
                    <ul>
                        <li><strong>Academic Excellence Scholarship:</strong> For students with GPA 3.8 or higher</li>
                        <li><strong>Leadership Scholarship:</strong> For students with demonstrated leadership experience</li>
                        <li><strong>Community Service Award:</strong> For students with 100+ volunteer hours</li>
                        <li><strong>Need-based Financial Aid:</strong> Based on family income verification</li>
                    </ul>
                    <p>All applications require two recommendation letters and a personal statement.</p>
                </div>
            </div>

            <!-- Achievement Announcements -->
            <div class="announcement card announcement-medium" data-category="achievement" data-importance="medium">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">National Science Competition Winners</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Congratulations to our Science Club for securing the first place in the National Science Competition 2025!</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 28, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>National Science Competition Victory:</h6>
                    <p>Our school's Science Club has won first place in the prestigious National Science Competition with their innovative project on renewable energy solutions.</p>
                    <p>Team members Lisa Johnson, Michael Chen, and Priya Patel worked for six months on their solar-powered water purification system that impressed the judges with its efficiency and practicality for developing regions.</p>
                    <p>The team will represent our school at the International Science Fair in June. A celebration event will be held in the auditorium on April 10th at 3:30 PM.</p>
                </div>
            </div>

            <div class="announcement card announcement-low" data-category="achievement" data-importance="low">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Arts Festival Recognition</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Our school's Art Department received an honorable mention at the Regional Arts Festival for the innovative mixed media display.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 20, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>Arts Festival Achievement:</h6>
                    <p>The Art Department's mixed media installation titled "Perspectives on Climate" received an honorable mention at this year's Regional Arts Festival.</p>
                    <p>The collaborative project featured work from 15 students across grades 9-12 and incorporated recycled materials, digital art, and traditional painting techniques.</p>
                    <p>The installation will be on display in the school gallery until April 15th. Congratulations to all student artists and faculty involved!</p>
                </div>
            </div>

            <!-- General Announcements -->
            <div class="announcement card announcement-high" data-category="general" data-importance="high">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Campus Maintenance Schedule</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">The main building will undergo maintenance from April 10-15, 2025. All classes normally held in the main building will be relocated.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 30, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>Maintenance Schedule and Room Assignments:</h6>
                    <p>During the maintenance period (April 10-15), the following relocations will be in effect:</p>
                    <ul>
                        <li>All 100-series classrooms will move to the Science Building, rooms S101-S110</li>
                        <li>All 200-series classrooms will move to the Library's study rooms</li>
                        <li>Administrative offices will temporarily relocate to the Conference Center</li>
                    </ul>
                    <p>The maintenance includes HVAC system upgrades, electrical repairs, and Wi-Fi infrastructure improvements. All relocations will be clearly marked with signage. Please check your email for detailed room assignments specific to your classes.</p>
                </div>
            </div>

            <div class="announcement card announcement-low" data-category="general" data-importance="low">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Library Extended Hours</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">During the exam period (April 20-30), the library will be open with extended hours from 7:00 AM to 10:00 PM on weekdays.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 27, 2025</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="announcement-details">
                    <h6>Extended Library Hours and Services:</h6>
                    <p>Extended hours during exam period (April 20-30):</p>
                    <ul>
                        <li>Weekdays: 7:00 AM - 10:00 PM</li>
                        <li>Weekends: 9:00 AM - 8:00 PM</li>
                    </ul>
                    <p>Special services available during this period:</p>
                    <ul>
                        <li>Additional group study rooms (reservation required)</li>
                        <li>Extended laptop lending periods (up to 48 hours)</li>
                        <li>Free printing up to 50 pages per student</li>
                        <li>Librarians available for research assistance until 8:00 PM daily</li>
                        <li>Complimentary coffee and tea from 7:00 PM - 9:00 PM</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="color-legend">
            <h5>Announcement Importance:</h5>
            <div class="d-flex flex-wrap justify-content-start">
                <div class="me-4 mb-2">
                    <span class="color-indicator" style="background-color: #dc3545;"></span>
                    <span>High Importance</span>
                </div>
                <div class="me-4 mb-2">
                    <span class="color-indicator" style="background-color: #fd7e14;"></span>
                    <span>Medium Importance</span>
                </div>
                <div class="me-4 mb-2">
                    <span class="color-indicator" style="background-color: #20c997;"></span>
                    <span>Low Importance</span>
                </div>
            </div>
        </div>

        <div class="text-center mt-4">
            <button id="load-more" class="detail-btn">Load More Announcements</button>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Category filtering
            const filterBtns = document.querySelectorAll('.filter-btn');
            filterBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    const filter = this.getAttribute('data-filter');
                    
                    // Update active button
                    filterBtns.forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                    
                    // Filter announcements
                    const announcements = document.querySelectorAll('.announcement');
                    announcements.forEach(announcement => {
                        if (filter === 'all' || announcement.getAttribute('data-category') === filter) {
                            announcement.style.display = 'block';
                        } else {
                            announcement.style.display = 'none';
                        }
                    });
                });
            });
            
            // Toggle details functionality
            const detailButtons = document.querySelectorAll('.toggle-details');
            detailButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const details = this.closest('.announcement').querySelector('.announcement-details');
                    if (details.style.display === 'block') {
                        details.style.display = 'none';
                        this.textContent = 'View Details';
                    } else {
                        details.style.display = 'block';
                        this.textContent = 'Hide Details';
                    }
                });
            });
            
            // Load more functionality (for demonstration)
            document.getElementById('load-more').addEventListener('click', function() {
                alert('In a real application, this would load more announcements from the database.');
            });

            // Check if we're on mobile and adjust the filter buttons accordingly
            function checkMobile() {
                const filterBtnGroup = document.querySelector('.filter-btn-group');
                if (window.innerWidth < 768) {
                    filterBtnGroup.classList.remove('btn-group');
                } else {
                    filterBtnGroup.classList.add('btn-group');
                }
            }

            // Run on load and resize
            checkMobile();
            window.addEventListener('resize', checkMobile);
        });
    </script>

    @include('layouts.partials.footer')
    
<div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
</div>

<!-- Your existing script imports -->
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
</body>
</html>