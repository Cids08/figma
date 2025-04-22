<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="{{ asset('images/logo.png') }}">

  <meta name="description" content="San Roque Elementary School - Quality Education" />
  <meta name="keywords" content="education, elementary, school, learning" />

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Inter:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

  <!-- Core CSS -->
  <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/animate.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">
  <link rel="stylesheet" href="{{ asset('fonts/icomoon/style.css') }}">
  <link rel="stylesheet" href="{{ asset('fonts/flaticon/font/flaticon.css') }}">
  <link rel="stylesheet" href="{{ asset('css/aos.css') }}">
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">

  <title>Enrollment Success</title>

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      color: #333;
    }

    .card {
      border: 1px solid #ddd;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      overflow: hidden;
    }

    .card-header {
      background-color: #007b5e;
      color: white;
      text-align: center;
      font-size: 1.5rem;
      font-weight: bold;
    }

    .icon-check-circle {
      font-size: 64px;
      color: #28a745;
    }

    h3 {
      font-weight: 600;
      color: #004085;
    }

    .lead {
      font-size: 1.2rem;
      color: #555;
    }

    .alert-info {
      background-color: #d1ecf1;
      border-color: #bee5eb;
      color: #0c5460;
      padding: 15px;
      border-radius: 5px;
    }

    ol {
      padding-left: 20px;
    }

    ol li {
      font-size: 1.1rem;
      margin-bottom: 10px;
      color: #333;
    }

    .btn-primary {
      background-color: #0056b3;
      border-color: #004085;
      padding: 10px 20px;
      font-size: 1rem;
      font-weight: bold;
      border-radius: 5px;
      transition: 0.3s;
    }

    .btn-primary:hover {
      background-color: rgb(1, 27, 54);
      border-color: #003366;
    }
  </style>
</head>
<body>

  @include('layouts.partials.navbar')

  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header bg-success text-white">
            <h2 class="mb-0 text-center">Enrollment Submitted Successfully!</h2>
          </div>
          <div class="card-body text-center">
            <div class="py-4">
              <i class="icon-check-circle" style="font-size: 64px; color: #28a745;"></i>
              <h3 class="mt-3">Thank you for enrolling with San Roque Elementary School</h3>
              <p class="lead">Your enrollment form has been submitted successfully.</p>

              <div class="alert alert-info mt-4">
                @if(session('enrollment'))
                  <p>A confirmation email has been sent to: <strong>{{ session('enrollment')['email'] }}</strong></p>
                  <p class="mb-0">Please check your email for important next steps.</p>
                @else
                  <p>Your enrollment has been submitted. Please check your email for confirmation.</p>
                @endif

                <div class="mt-4 text-left">
                  <h4>What happens next?</h4>
                  <ol>
                    <li>Bring original copies of the required documents to the school office</li>
                    <li>School staff will review your application</li>
                    <li>You will be contacted for orientation details</li>
                  </ol>
                </div>

                <div class="mt-5 text-center">
                  <a href="{{ route('home') }}" class="btn btn-primary">Return to Homepage</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  @include('layouts.partials.footer')

  <!-- PreLoader -->
  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <!-- Scripts -->
  <script src="{{ asset('js/jquery-3.4.1.min.js') }}"></script>
  <script src="{{ asset('js/popper.min.js') }}"></script>
  <script src="{{ asset('js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('js/jquery.waypoints.min.js') }}"></script>
  <script src="{{ asset('js/jquery.fancybox.min.js') }}"></script>
  <script src="{{ asset('js/aos.js') }}"></script>
  <script src="{{ asset('js/custom.js') }}"></script>
  <script src="{{ asset('js/nav.active.js') }}"></script>
  <script src="{{ asset('js/sres-scroll.js') }}"></script>

</body>
</html>
