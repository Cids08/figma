document.addEventListener('DOMContentLoaded', function() {
    // News details data
    const newsDetails = {
        'mathOlympiad': {
            title: 'Math Olympiad Success',
            fullDescription: `
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="text-primary mb-3">Math Olympiad National Achievement</h2>
                            <div class="alert alert-info" role="alert">
                                <strong>Date:</strong> March 10, 2025
                            </div>
                            <p>Our dedicated math team has achieved extraordinary success at the National Math Olympiad, bringing home multiple medals and showcasing exceptional problem-solving skills.</p>
                            
                            <h4 class="mt-4">Key Highlights:</h4>
                            <ul>
                                <li>Gold Medal in Advanced Problem Solving Category</li>
                                <li>Silver Medal in Group Mathematical Challenges</li>
                                <li>Bronze Medal in Individual Competition</li>
                            </ul>
                            
                            <p>The team's success reflects our school's commitment to academic excellence and nurturing mathematical talent. Special recognition goes to team members who demonstrated remarkable analytical thinking and collaborative problem-solving skills.</p>
                            
                            <div class="text-center mt-4">
                                <img src="images/logo.png" alt="Math Team" class="img-fluid rounded shadow-sm" style="max-width: 400px;">
                            </div>
                        </div>
                    </div>
                </div>
            `
        },
        'communityService': {
            title: 'Community Service Day',
            fullDescription: `
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="text-primary mb-3">Students Unite for Community Support</h2>
                            <div class="alert alert-success" role="alert">
                                <strong>Date:</strong> March 5, 2025
                            </div>
                            <p>San Roque Elementary School demonstrated its commitment to social responsibility through a comprehensive Community Service Day, engaging students and teachers in meaningful local initiatives.</p>
                            
                            <h4 class="mt-4">Service Activities:</h4>
                            <ul>
                                <li>Environmental Cleanup at Local Park</li>
                                <li>Food Drive for Community Food Bank</li>
                                <li>Tree Planting Initiative</li>
                                <li>Care Packages for Senior Citizens</li>
                            </ul>
                            
                            <p>Our students learned valuable lessons about empathy, teamwork, and the importance of giving back to the community. The day was not just about service, but about building character and understanding social responsibility.</p>
                            
                            <div class="text-center mt-4">
                                <img src="images/logo.png" alt="Community Service" class="img-fluid rounded shadow-sm" style="max-width: 400px;">
                            </div>
                        </div>
                    </div>
                </div>
            `
        },
        'artExhibition': {
            title: 'Art Exhibition Highlights',
            fullDescription: `
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="text-primary mb-3">Annual Student Art Exhibition</h2>
                            <div class="alert alert-warning" role="alert">
                                <strong>Date:</strong> February 28, 2024
                            </div>
                            <p>Our Annual Student Art Exhibition celebrated creativity, diversity, and artistic expression across multiple grade levels and artistic mediums.</p>
                            
                            <h4 class="mt-4">Exhibition Sections:</h4>
                            <ul>
                                <li>Drawing and Sketching</li>
                                <li>Painting (Watercolor and Acrylic)</li>
                                <li>Digital Art</li>
                                <li>Sculpture and 3D Design</li>
                            </ul>
                            
                            <p>The exhibition showcased the incredible talent of our students, demonstrating their imagination, technical skills, and unique perspectives through various art forms.</p>
                            
                            <div class="text-center mt-4">
                                <img src="images/logo.png" alt="Art Exhibition" class="img-fluid rounded shadow-sm" style="max-width: 400px;">
                            </div>
                        </div>
                    </div>
                </div>
            `
        },
        'alumniHomecoming': {
            title: 'Grand Alumni Homecoming 2025',
            fullDescription: `
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="text-primary mb-3">Grand Alumni Homecoming 2025</h2>
                            <div class="alert alert-danger" role="alert">
                                <strong>Date:</strong> May 6, 2025
                            </div>
                            <p>Join us for our most anticipated event of the year - the Annual Alumni Homecoming! Reconnect with old classmates, relive memories, and celebrate the enduring spirit of San Roque Elementary School.</p>
                            
                            <h4 class="mt-4">Event Schedule:</h4>
                            <ul>
                                <li>9:00 AM - Registration and Welcome</li>
                                <li>10:30 AM - School Tour</li>
                                <li>12:00 PM - Lunch and Networking</li>
                                <li>2:00 PM - Alumni Achievements Presentation</li>
                                <li>4:00 PM - Closing Ceremony</li>
                            </ul>
                            
                            <h4 class="mt-4">Registration Details:</h4>
                            <p>Alumni can register online or on-site. Early bird registration available until April 15, 2025.</p>
                            
                            <div class="text-center mt-4">
                                <img src="images/logo.png" alt="Alumni Homecoming" class="img-fluid rounded shadow-sm" style="max-width: 400px;">
                            </div>
                        </div>
                    </div>
                </div>
            `
        }
    };

    // Function to show news details
    function showNewsDetails(newsId) {
        const detailsContainer = document.getElementById('newsDetailsContainer');
        const newsDetail = newsDetails[newsId];
        
        if (newsDetail) {
            // Scroll to details container
            detailsContainer.innerHTML = newsDetail.fullDescription;
            detailsContainer.classList.remove('d-none');
            detailsContainer.scrollIntoView({ behavior: 'smooth' });
        }
    }

    // Add event listeners to all detail buttons
    const detailButtons = document.querySelectorAll('[data-bs-target]');
    detailButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            const modalId = this.getAttribute('data-bs-target');
            const newsId = modalId.replace('#', '').replace('Modal', '');
            showNewsDetails(newsId);
        });
    });
});