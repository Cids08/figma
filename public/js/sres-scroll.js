// SRES custom scroll effect script - to be placed in js/sres-scroll.js
$(document).ready(function() {
    // Get the elements
    const topHeader = $('#top-header');
    const mainNav = $('#main-nav');
    const scrollLogo = $('.scroll-logo');
    
    // Add scroll event listener
    $(window).scroll(function() {
        if ($(window).scrollTop() > 50) {
            // Hide top header
            topHeader.css({
                'transform': 'translateY(-100%)',
                'opacity': '0'
            });
            
            // Make navbar sticky
            mainNav.addClass('sticky');
            
            // Show the scroll logo
            scrollLogo.removeClass('d-none');
        } else {
            // Show top header
            topHeader.css({
                'transform': 'translateY(0)',
                'opacity': '1'
            });
            
            // Remove sticky from navbar
            mainNav.removeClass('sticky');
            
            // Hide the scroll logo
            scrollLogo.addClass('d-none');
        }
    });
});