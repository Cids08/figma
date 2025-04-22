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
  
  <title>Contact Us - San Roque Elementary School</title>
</head>
<body class="sres-contact-page">
  @include('layouts.partials.navbar')

  <diV class="banner" data-aos="fade-up" data-aos-delay="0">
    <div class="container">
      <div class="banner-content" data-aos="fade-up" data-aos-delay="0">
        <h1>Contact San Roque Elementary School</h1>
        <p class="lead">We're here to help. Reach out to us with any questions or concerns about our school community.</p>
      </div>
    </div>
  </div>
    
  <div class="container sres-contact-container">
    <div class="row">
      <div class="col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="100">
        <div class="sres-contact-info text-center">
          <i class="icon-room"></i>
          <h4 class="mb-3">Location</h4>
          <p class="text-muted">San Roque, Viga, Catanduanes</p>
        </div>
      </div>
      <div class="col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="200">
        <div class="sres-contact-info text-center">
          <i class="icon-clock-o"></i>
          <h4 class="mb-3">Open Hours</h4>
          <p class="text-muted">
            Monday-Friday:<br>
            8:00 AM - 5:00 PM
          </p>
        </div>
      </div>
      <div class="col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="300">
        <div class="sres-contact-info text-center">
          <i class="icon-phone"></i>
          <h4 class="mb-3">Contact</h4>
          <p class="text-muted">
            Email: 113330@deped.gov.ph<br>
            Phone: +63 9605519104
          </p>
        </div>
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-lg-8" data-aos="fade-up" data-aos-delay="400">
        <div class="sres-contact-form">
          @if(session('success'))
            <div class="alert alert-success">
              {{ session('success') }}
            </div>
          @endif
          
          <form action="{{ route('contact.store') }}" method="POST">
            @csrf
            <div class="row">
              <div class="col-md-6 mb-3">
                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" placeholder="Your Name" value="{{ old('name') }}">
                @error('name')
                  <div class="invalid-feedback">{{ $message }}</div>
                @enderror
              </div>
              <div class="col-md-6 mb-3">
                <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" placeholder="Your Email" value="{{ old('email') }}">
                @error('email')
                  <div class="invalid-feedback">{{ $message }}</div>
                @enderror
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control @error('subject') is-invalid @enderror" name="subject" placeholder="Subject" value="{{ old('subject') }}">
                @error('subject')
                  <div class="invalid-feedback">{{ $message }}</div>
                @enderror
              </div>
              <div class="col-12 mb-3">
                <textarea name="message" cols="30" rows="7" class="form-control @error('message') is-invalid @enderror" placeholder="Message">{{ old('message') }}</textarea>
                @error('message')
                  <div class="invalid-feedback">{{ $message }}</div>
                @enderror
              </div>
              
              <div class="col-12 text-center">
                <input type="submit" value="Send Message" class="btn btn-primary btn-lg">
              </div>
            </div>
          </form>
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