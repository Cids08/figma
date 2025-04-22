<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link rel="shortcut icon" href="images/logo.png">

    <meta name="description" content="San Roque Elementary School - Quality Education" />
    <meta name="keywords" content="education, elementary, school, learning" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Display+Playfair:wght@400;700&family=Inter:wght@400;700&display=swap">
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
    </head>
    <body>

        @include('layouts.partials.navbar')
        
        <!-- Hero Section with AOS animation -->
        <section class="hero-section" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="hero-content">
                            <h1 data-aos="fade-up" data-aos-delay="100">PARTNER FOR YOUR<br> FUTURE OF LEARNING</h1>
                            <div class="hero-text mt-4" data-aos="fade-up" data-aos-delay="200">
                                <p>At San Roque Elementary School, we provide quality education in a safe and supportive environment. We help students grow, learn and develop skills to achieve their full potential. Guided by our core values, we prepare learners to become responsible and successful members of society.</p>
                            </div>
                            <a href="{{ route('history') }}" class="btn btn-light mt-3" data-aos="fade-up" data-aos-delay="300">Learn more</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="services-section">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="section-title mb-3" data-aos="fade-up" data-aos-delay="0">
                        <h2 class="line-bottom mb-4">Become an Instructor</h2>
                    </div>

                    <p data-aos="fade-up" data-aos-delay="100">San Roque Elementary School is looking for passionate and dedicated individuals to join our team of educators. If you have the heart for teaching and the commitment to shaping the future of young learners, we invite you to become part of our school community.
                    As an instructor at San Roque Elementary School, you will have the opportunity to make a meaningful impact on students' lives by fostering a love for learning and guiding them toward success. We value teachers who embody the following qualities:</p>

                    <ul class="ul-check list-unstyled mb-5 primary" data-aos="fade-up" data-aos-delay="200">
                        <li>Passion for Teaching.</li>
                        <li>Patience and Understanding.</li>
                        <li>Compassion and Empathy.</li>
                    </ul>

                    <p data-aos="fade-up" data-aos-delay="300"><a href="{{ route('contact') }}" class="btn btn-primary">Get Started</a></p>
                </div>
                <div class="col-lg-6" data-aos="fade-up" data-aos-delay="0">
                    <figure class="img-wrap-2">
                        <img src="images/staff_6.jpg" alt="Image" class="img-fluid">
                        <div class="dotted"></div>
                    </figure>
                </div>
            </div>
        </div>
    </div>

    <div class="untree_co-section">
        <div class="container"> 
            <div class="row justify-content-center mb-5">
                <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="line-bottom text-center mb-4">We Have Best Education</h2>
                    <p>We provide the highest quality education, fostering knowledge, skills, and growth for a successful future.</p>
                </div>
            </div>

            <div class="row">
                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="feature">
                        <span class="uil uil-music"></span>
                        <h3>Music Class</h3>
                        <p>A creative space where students learn about rhythm, melody, instruments, and musical expression through listening, singing, and playing.</p>
                    </div>
                </div>

                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="feature">
                        <span class="uil uil-calculator-alt"></span>
                        <h3>Math Class</h3>
                        <p>A subject focused on numbers, problem-solving, and logical thinking, covering topics like arithmetic, algebra, geometry, and more.</p>
                    </div>
                </div>

                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="feature">
                        <span class="uil uil-book-open"></span>
                        <h3>English Class</h3>
                        <p>A course that develops reading, writing, speaking, and comprehension skills, often exploring literature and grammar.</p>
                    </div>
                </div>

                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="feature">
                        <span class="uil uil-book-alt"></span>
                        <h3>Reading for Kids</h3>
                        <p>An engaging activity that builds literacy skills, fosters imagination, and encourages a love for books through storytelling and comprehension exercises.</p>
                    </div>
                </div>

                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="feature">
                        <span class="uil uil-history"></span>
                        <h3>History Class</h3>
                        <p>A study of past events, civilizations, and influential figures, helping students understand how the past shapes the present.</p>
                    </div>
                </div>

                <div class="col-6 col-sm-6 col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="feature">
                        <span class="uil uil-headphones"></span>
                        <h3>Sports</h3>
                        <p>A physical education course that promotes fitness, teamwork, and coordination through various sports, exercises, and games.</p>
                    </div>
                </div>
            </div>
        </div> 
    </div>

    <div class="untree_co-section">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5 mb-5">
                    <h2 class="line-bottom mb-4" data-aos="fade-up" data-aos-delay="0">About Us</h2>
                    <p data-aos="fade-up" data-aos-delay="100">With our steadfast focus on academic excellence, character development, and overall growth, our goal is to nurture each student's full potential to succeed in life.</p>
                    <p data-aos="fade-up" data-aos-delay="100">We provide a supportive environment where students can develop their talents, discover their passions, and achieve their goals. Well-known for having a: </p>
                    
                    <ul class="list-unstyled ul-check mb-5 primary" data-aos="fade-up" data-aos-delay="200">
                        <li>Professional Teachers</li>
                        <li>Eco-freindly School</li>
                    </ul>

                    <div class="row count-numbers mb-5">
                        <div class="col-4 col-lg-4" data-aos="fade-up" data-aos-delay="0">
                            <span class="counter d-block"><span data-number="167">0</span><span></span></span>
                            <span class="caption-2">No. Students</span>
                        </div>
                        <div class="col-4 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                            <span class="counter d-block"><span data-number="10">0</span><span></span></span>
                            <span class="caption-2">No. Teachers</span>
                        </div>
                        <div class="col-4 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                            <span class="counter d-block"><span data-number="12">0</span><span></span></span>
                            <span class="caption-2">No. Awards</span>
                        </div>
                    </div>

                    <p data-aos="fade-up" data-aos-delay="200">
                        <a class="btn btn-primary" href="{{ route('enrollment.create') }}">Admission</a>
                    </p>
                </div>
                <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                    <div class="bg-1">
                        <a href="https://www.youtube.com/shorts/lSt3kYqCuww" data-fancybox class="video-wrap">
                            <span class="play-wrap"><span class="icon-play"></span></span>
                            <img src="images/gal_3.jpg" alt="Image" class="img-fluid rounded">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div> 

    <div class="untree_co-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="line-bottom text-center mb-4">School News</h2>
                    <p>News will be posted here. Stay tune for more news.</p>
                </div>
            </div>
            <div class="row align-items-stretch">
                <div class="col-lg-6"  data-aos="fade-up" data-aos-delay="100">
                    <div class="media-h d-flex h-100">
                        <figure>
                            <img src="images/hero-img-1-min.jpg" alt="Image">
                        </figure>
                        <div class="media-h-bodys">
                            <h2 class="mb-3"><a href="{{ route('announcement') }}">2025 Grand Alumni Homecoming</a></h2>
                            <div class="meta mb-2"><span class="icon-calendar mr-2"></span><span>May 6, 2025</span>  <span class="icon-person mr-2"></span>Admin</div>
                            <p>The first ever almuni.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6"  data-aos="fade-up" data-aos-delay="200">
                    <div class="media-h d-flex h-100">
                        <figure>
                            <img src="images/gal_3.jpg" alt="Image">
                        </figure>
                        <div class="media-h-bodys">
                            <h2><a href="{{ route('announcement') }}">Enroll Your Kids This Summer</a></h2>
                            <div class="meta mb-2"><span class="icon-calendar mr-2"></span><span>June 22, 2025</span>  <span class="icon-person mr-2"></span>Admin</div>
                            <p>Give your children the opportunity to learn, grow, and excel by enrolling them this summer at San Roque Elementary School, where quality education and a nurturing environment come together for their success.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="untree_co-section">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="line-bottom text-center mb-4">Pricing</h2>
                    <p>All free!</p>
                </div>
            </div>
        </div>
    </div>

    <div class="untree_co-section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 text-center mx-auto">
                    <h3 class="line-bottom mb-4">Testimonials</h3>
                    <div class="owl-carousel wide-slider-testimonial">
                        <div class="item">
                            <blockquote class="block-testimonial">
                                <p>&ldquo;&rdquo;</p>
                                <div class="author">
                                    <img src="images/person_1.jpg" alt="Free template by TemplateUX">
                                    <h3>Magdalena V. Morales</h3>
                                    <p class="position">Teacher I</p>
                                </div>
                            </blockquote>
                        </div>

                        <div class="item">
                            <blockquote class="block-testimonial">
                                <p> &ldquo;When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.&rdquo;</p>
                                <div class="author">
                                    <img src="images/person_2.jpg" alt="Free template by TemplateUX">
                                    <h3>James Woodland</h3>
                                    <p class="position">Designer at Facebook</p>
                                </div>
                            </blockquote>
                        </div>

                        <div class="item">
                            <blockquote class="block-testimonial">
                                <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
                                <div class="author">
                                    <img src="images/person_3.jpg" alt="Free template by TemplateUX">
                                    <h3>Rob Smith</h3>
                                    <p class="position">Product Designer at Twitter</p>
                                </div>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="untree_co-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 mr-auto mb-5 mb-lg-0"  data-aos="fade-up" data-aos-delay="0">
                    <img src="images/gal_4.jpg" alt="image" class="img-fluid">
                </div>
                <div class="col-lg-7 ml-auto" data-aos="fade-up" data-aos-delay="100">
                    <h3 class="line-bottom mb-4">Why Choose Us</h3>
                    <p>Choose San Roque Elementary School for a strong foundation in learning, a supportive environment, and dedicated teachers committed to your child's success. We provide quality education that nurtures both academic excellence and character development.</p>

                    <div class="custom-accordion" id="accordion_1">
                        <div class="accordion-item">
                            <h2 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Good Teachers and Staffs</button>
                            </h2>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                                <div class="accordion-body">
                                    <div class="d-flex">
                                        <div class="accordion-img mr-4">
                                            <img src="images/gal_3.jpg" alt="Image" class="img-fluid">
                                        </div>
                                        <div>
                                            <p>Our dedicated and passionate educators are highly trained to provide quality instruction and guidance, ensuring that every child reaches their full potential. </p>
                                            <p> Our supportive staff also plays a vital role in creating a positive and nurturing learning environment.</p>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">We Value Good Characters</button>
                            </h2>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion_1">
                                <div class="accordion-body">
                                    <div class="d-flex">
                                        <div class="accordion-img mr-4">
                                            <img src="images/gal_1.jpg" alt="Image" class="img-fluid">
                                        </div>
                                        <div>
                                            <p>Beyond academics, we emphasize the importance of kindness, respect, and responsibility. </p>
                                            <p>We instill strong moral values in our students, shaping them into well-rounded individuals prepared for the future.</p>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="accordion-item">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Your Children are Safe</button>
                            </h2>

                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion_1">
                                <div class="accordion-body">
                                    <div class="d-flex">
                                        <div class="accordion-img mr-4">
                                            <img src="images/gal_3.jpg" alt="Image" class="img-fluid">
                                        </div>
                                        <div>
                                            <p>We prioritize the safety and well-being of every student, maintaining a secure and caring school environment where they can learn with confidence and peace of mind.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>
        @include('layouts.partials.footer')

        <!--PreLoader-->
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