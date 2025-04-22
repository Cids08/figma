<!-- Top Header (disappears on scroll) -->
<div class="top-header py-2" id="top-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="logo-container d-flex align-items-center">
                    <img src="{{ asset('images/logo.png') }}" alt="Logo" class="logo me-2">
                        <span class="logo-text">San Roque Elementary School</span>
                    </div>
                </div>
                <div class="col-lg-6 text-end">
                    <div class="slogan text-white">Join with us and be a part of success</div>
                    <a href="{{ route('enrollment.create') }}" class="enroll-btn"><i class="icon-pencil"></i>ENROLL NOW</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark" id="main-nav">
        <div class="container">
            <!-- This logo is hidden by default and shows on scroll -->
            <div class="navbar-brand scroll-logo d-none">
                <img src="{{ asset('images/logo.png') }}" alt="SRES Logo" class="small-logo">
                <span>SRES</span>
            </div>
            
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                    <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="{{ route('home') }}">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('history') ? 'active' : '' }}" href="{{ route('history') }}">ABOUT US</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('staff') ? 'active' : '' }}" href="{{ route('staff') }}">OUR STAFF</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('news') ? 'active' : '' }}" href="{{ route('news') }}">NEWS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('gallery') ? 'active' : '' }}" href="{{ route('gallery') }}">GALLERY</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('announcement') ? 'active' : '' }}" href="{{ route('announcement') }}">ANNOUNCEMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('contact') ? 'active' : '' }}" href="{{ route('contact') }}">CONTACT US</a>
                    </li>
                </ul>
                
                <form class="form-inline ml-auto">
                    <div class="input-group">
                        <input class="form-control" type="search" placeholder="Search">
                        <div class="input-group-append">
                            <button class="btn btn-primary1" type="submit">
                                <i class="icon-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </nav>