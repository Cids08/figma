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
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/animate.min.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/style.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
  
  <title>Gallery</title>
  <style>
    .container{
        margin-top:none;
    }
  </style>
</head>
<body>
    
    @include('layouts.partials.navbar')

    <div class="banner" data-aos="fade-up">
        <div class="container">
            <div class="banner-content text-center">
                <h1>SAN ROQUE ELEMENTARY SCHOOL</h1>
                <h2 class="mb-4">Photo Gallery</h2>
                <p class="lead">Capturing memories that last a lifetime</p>
            </div>
        </div>
    </div>


    <main class="container py-5">

        <div id="content-area" >
            <!-- Albums View -->
            <section id="albums-view">
                <h2 class="text-center mb-4" data-aos="fade-up" data-aos-delay="100">Photo Albums</h2>
                <p class="text-center mb-5" data-aos="fade-up" data-aos-delay="100">Explore our collection of school memories and events</p>
                
                <div class="row g-4">
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="album-card" data-album="sports">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="Sports">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Sports Events</h5>
                                    <p class="card-text">Field day, basketball tournaments, and more</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">24 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="200">
                        <div class="album-card" data-album="graduation">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="Graduation">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Graduation</h5>
                                    <p class="card-text">Class of 2025 graduation ceremony</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">18 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="300">
                        <div class="album-card" data-album="arts">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="Arts">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Arts & Music</h5>
                                    <p class="card-text">School plays, concerts, and art exhibitions</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">15 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="album-card" data-album="trips">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="Field Trips">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Field Trips</h5>
                                    <p class="card-text">Educational tours and excursions</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">20 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="200">
                        <div class="album-card" data-album="science">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="Science Fair">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Science Fair</h5>
                                    <p class="card-text">Student projects and experiments</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">12 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="300">
                        <div class="album-card" data-album="events">
                            <div class="card h-100 shadow album-link">
                                <div class="overlay-container">
                                    <img src="images/1.png" class="card-img-top" alt="School Events">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <span class="btn btn-light btn-sm">View Album</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">School Events</h5>
                                    <p class="card-text">Special celebrations and gatherings</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">22 photos</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- Photos View (Initially Hidden) -->
            <section id="photos-view" class="d-none">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <button id="back-to-albums" class="btn btn-outline-primary">
                        <i class="fas fa-arrow-left me-2"></i> Back to Albums
                    </button>
                    <h2 id="current-album-title">Album Title</h2>
                    <div class="view-options">
                        <button class="btn btn-outline-secondary btn-sm me-2 view-option active" data-view="grid">
                            <i class="fas fa-th"></i>
                        </button>
                        <button class="btn btn-outline-secondary btn-sm view-option" data-view="masonry">
                            <i class="fas fa-columns"></i>
                        </button>
                    </div>
                </div>
                
                <!-- Photos Container -->
                <div id="photos-container" class="row g-4"></div>
            </section>
        </div>
    </main>
    <!-- Image Modal -->
<div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="imageModalLabel">Photo Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">
        <img src="" class="img-fluid" id="modal-image" alt="Photo">
        <p class="mt-3" id="modal-caption"></p>
      </div>
      <div class="modal-footer">
        <a href="#" class="btn btn-primary" id="download-link" download>Download</a>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
<script src="js/sres-scroll.js"></script>
<script src="js/gallery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="js/nav.active.js"></script>

</body>
</html>