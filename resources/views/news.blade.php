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
  
  <title>News</title>

  <style>
    .news-card {
        border-left: 5px solid #6c757d;
        transition: transform 0.2s;
        margin-bottom: 1.5rem;
    }
    .news-card:hover {
        transform: translateX(5px);
    }
    .news-card-featured {
        border-left-color: #0d6efd;
    }
    .news-card-academic {
        border-left-color: #17a2b8;
    }
    .news-card-community {
        border-left-color: #28a745;
    }
    .news-card-event {
        border-left-color: #dc3545;
    }
    .filter-btn.active {
        background-color: #0d6efd !important;
        color: white !important;
    }
    .news-details {
        display: none;
        padding: 15px;
        background-color: #f8f9fa;
        border-top: 1px solid #dee2e6;
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
    .news-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
    }
    .news-img-container {
        overflow: hidden;
    }
    .category-indicator {
        font-size: 0.85rem;
        padding: 0.25rem 0.5rem;
        border-radius: 4px;
        margin-right: 0.5rem;
        color: white;
        display: inline-block;
    }
    .indicator-event {
        background-color: #dc3545;
    }
    .indicator-academic {
        background-color: #17a2b8;
    }
    .indicator-community {
        background-color: #28a745;
    }
    .color-legend {
        background-color: #f8f9fa;
        border-radius: 6px;
        padding: 15px;
        margin-top: 20px;
    }
    .legend-item {
        display: inline-block;
        margin-right: 15px;
    }
    .legend-color {
        display: inline-block;
        width: 20px;
        height: 20px;
        margin-right: 5px;
        vertical-align: middle;
        border-radius: 3px;
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
                <h1>School Highlights</h1>
                <p class="lead text">Discover the exciting moments, student achievements, and upcoming events that make our school community special.</p>
            </div>
        </div>
    </div>
    <div>

    <div class="container py-4">
        <div class="row mb-4">
            <div class="col-md-12">
                <div class="btn-group filter-btn-group w-100">
                    <button class="btn btn-outline-primary filter-btn active" data-filter="all">All News</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="event">Events</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="academic">Academic</button>
                    <button class="btn btn-outline-primary filter-btn" data-filter="community">Community</button>
                </div>
            </div>
        </div>

        <div id="news-container">
            <!-- Featured News -->
            <div class="news-card card" data-category="event">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">
                        <span class="category-indicator indicator-event">Event</span>
                        Grand Alumni Homecoming 2024
                    </h5>
                </div>
                <div class="card-body">
                    <div class="row g-0">
                        <div class="col-md-4 news-img-container">
                            <img src="images/img-school-5-min.jpg" class="news-image" alt="Alumni Homecoming">
                        </div>
                        <div class="col-md-8">
                            <p class="card-text">Join us for our much-anticipated Annual Alumni Homecoming! Reconnect with old classmates, share memories, and celebrate the enduring spirit of San Roque Elementary School.</p>
                            <div class="d-flex justify-content-between align-items-center date-detail-container">
                                <small class="text-muted">Posted on: April 1, 2024</small>
                                <button class="detail-btn toggle-details">View Details</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news-details">
                    <h6>Event Details:</h6>
                    <ul>
                        <li><strong>Date:</strong> May 6, 2024</li>
                        <li><strong>Time:</strong> 2:00 PM - 8:00 PM</li>
                        <li><strong>Venue:</strong> San Roque Elementary School Grounds</li>
                        <li><strong>Dress Code:</strong> Smart Casual</li>
                    </ul>
                    <h6>Event Highlights:</h6>
                    <ul>
                        <li>Nostalgic photo exhibitions</li>
                        <li>School tour</li>
                        <li>Alumni achievements showcase</li>
                        <li>Dinner and networking</li>
                        <li>Special performances</li>
                    </ul>
                    <div class="mt-3">
                        <a href="#" class="btn btn-primary">Register for Event</a>
                    </div>
                </div>
            </div>

            <!-- Academic News -->
            <div class="news-card card" data-category="academic">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">
                        <span class="category-indicator indicator-academic">Academic</span>
                        Math Olympiad Success
                    </h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Our math team demonstrates exceptional problem-solving skills, bringing home multiple medals from the national competition.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 10, 2024</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="news-details">
                    <h6>Competition Highlights:</h6>
                    <ul>
                        <li><strong>Date:</strong> March 10, 2024</li>
                        <li><strong>Location:</strong> Regional Math Competition</li>
                        <li><strong>Achievement:</strong> Multiple Medals</li>
                    </ul>
                    <p>Our talented math team showcased exceptional problem-solving skills and mathematical prowess, bringing home multiple medals from the regional mathematics competition.</p>
                </div>
            </div>

            <!-- Community News -->
            <div class="news-card card" data-category="community">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">
                        <span class="category-indicator indicator-community">Community</span>
                        Community Service Day
                    </h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Students and teachers unite to make a difference, participating in local environmental cleanup and community support initiatives.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: March 5, 2024</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="news-details">
                    <h6>Event Details:</h6>
                    <ul>
                        <li><strong>Date:</strong> March 5, 2024</li>
                        <li><strong>Location:</strong> Local Community Areas</li>
                        <li><strong>Focus:</strong> Environmental Cleanup</li>
                    </ul>
                    <p>Students and teachers collaborated to make a meaningful difference in the local community through environmental cleanup and support initiatives.</p>
                </div>
            </div>

            <!-- Art Exhibition (now as an event) -->
            <div class="news-card card" data-category="event">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">
                        <span class="category-indicator indicator-event">Event</span>
                        Art Exhibition Highlights
                    </h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Annual student art exhibition showcases creativity, imagination, and artistic talent across various mediums and grade levels.</p>
                    <div class="d-flex justify-content-between align-items-center date-detail-container">
                        <small class="text-muted">Posted on: February 28, 2024</small>
                        <button class="detail-btn toggle-details">View Details</button>
                    </div>
                </div>
                <div class="news-details">
                    <h6>Exhibition Details:</h6>
                    <ul>
                        <li><strong>Date:</strong> February 28, 2024</li>
                        <li><strong>Location:</strong> School Art Gallery</li>
                        <li><strong>Participants:</strong> All Grade Levels</li>
                    </ul>
                    <p>Our annual student art exhibition celebrated creativity and imagination, featuring incredible artwork from students across all grade levels.</p>
                </div>
            </div>
        </div>

        <!-- Color Legend -->
        <div class="color-legend mt-4">
            <h6>Category Color Guide:</h6>
            <div class="legend-container">
                <div class="legend-item">
                    <span class="legend-color indicator-event"></span>
                    <span>Event</span>
                </div>
                <div class="legend-item">
                    <span class="legend-color indicator-academic"></span>
                    <span>Academic</span>
                </div>
                <div class="legend-item">
                    <span class="legend-color indicator-community"></span>
                    <span>Community</span>
                </div>
            </div>
            <small class="text-muted">Note: The color coding is based on the category indicator of each news item.</small>
        </div>

        <div class="text-center mt-4">
            <button id="load-more" class="detail-btn">Load More News</button>
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
                    const newsItems = document.querySelectorAll('.news-card');
                    newsItems.forEach(item => {
                        if (filter === 'all' || item.getAttribute('data-category') === filter) {
                            item.style.display = 'block';
                        } else {
                            item.style.display = 'none';
                        }
                    });
                });
            });
            
            // Toggle details functionality
            const detailButtons = document.querySelectorAll('.toggle-details');
            detailButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const details = this.closest('.news-card').querySelector('.news-details');
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
                alert('In a real application, this would load more news from the database.');
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