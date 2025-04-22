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
    
  <title>About Us</title>
  <style>
            .custom-card {
            transition: transform 0.3s ease;
        }
        .custom-card:hover {
            transform: scale(1.05);
        }
  </style>
</head>
<body>
    
    @include('layouts.partials.navbar')

      <section class="hero-section" data-aos="fade-up">
          <div class="container">
            <div class="row">
              <div class="col-md-6">
                <div class="hero-content">
                  <h1 data-aos="fade-up" data-aos-delay="100">SAN ROQUE<br> ELEMENTARY SCHOOL</h1>
                  <div class="hero-text mt-4" data-aos="fade-up" data-aos-delay="200">
                    <p>
                      We are dedicated to providing quality education and nurturing the potential of every student. 
                      Our commitment is to create a supportive learning environment that encourages growth, creativity, and critical thinking.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </section>

      <div class="container py-5">
        <div class="row g-4">
            <div class="col-md-6">
                <div class="card mission-vision-card shadow-sm h-100 text-center p-4">
                    <div class="card-body d-flex flex-column align-items-center justify-content-center">
                        <i class="bi bi-bullseye mission-vision-icon"></i>
                        <h2 class="card-title mb-3 fw-bold">Our Mission</h2>
                        <p class="card-text text-muted lead">
                            To protect and promote the right of every filipino to quality, equality, culture-based and complete
                            basic education where:
                            Students learn in a child-friendly, gender-sensitive, safe and motivating environment.
                            Teachers facilitates learning and constantly nurture every learner.
                            Administrators and staff, as stewards of the institution, ensure on enabling
                            and supportive environment for effective learning to happen.
                            Family, community and other stakeholders are actively engaged responsibility 
                            for developing life-long learners.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mission-vision-card shadow-sm h-100 text-center p-4">
                    <div class="card-body d-flex flex-column align-items-center justify-content-center">
                        <i class="bi bi-eye mission-vision-icon"></i>
                        <h2 class="card-title mb-3 fw-bold">Our Vision</h2>
                        <p class="card-text text-muted lead">
                            We dream of Filipinos who passionately loved their country and 
                            whose values and competencies enable them to realize their full
                            potential and contribute meaningfully to building the nation.
                            As a learner-centered public constitution , the Department of Education
                            continously improves itself to better serve its stakeholders.
                        </p>
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