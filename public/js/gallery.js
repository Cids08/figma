// Global variables to track current state
let currentAlbum = null;
let currentView = 'grid';

// Album Data with actual school photos (replace with your exact file paths)
const albumData = {
    sports: [
        { id: 1, src: 'images/staff_1.jpg', caption: 'Basketball Team Group Photo', date: 'March 15, 2025' },
        { id: 2, src: 'images/staff_1.jpg', caption: 'Field Day Sprint Race', date: 'March 16, 2025' },
        { id: 3, src: 'images/staff_1.jpg', caption: 'Volleyball Interschool Match', date: 'March 20, 2025' },
        { id: 4, src: 'images/staff_1.jpg', caption: 'Soccer Team Practice', date: 'March 22, 2025' },
        { id: 5, src: 'images/staff_1.jpg', caption: 'Track and Field Competition', date: 'March 25, 2025' }
    ],
    graduation: [
        { id: 1, src: 'images/staff_2.jpg', caption: 'Graduation Ceremony Overview', date: 'June 10, 2025' },
        { id: 2, src: 'images/staff_2.jpg', caption: 'Students Receiving Diplomas', date: 'June 10, 2025' },
        { id: 3, src: 'images/staff_2.jpg', caption: 'Graduating Class Group Photo', date: 'June 10, 2025' },
        { id: 4, src: 'images/staff_2.jpg', caption: 'Family Congratulations', date: 'June 10, 2025' },
        { id: 5, src: 'images/staff_2.jpg', caption: 'Graduation Class Banner', date: 'June 10, 2025' }
    ],
    arts: [
        { id: 1, src: 'images/staff_3.jpg', caption: 'Annual School Play', date: 'May 5, 2025' },
        { id: 2, src: 'images/staff_3.jpg', caption: 'Student Art Exhibition', date: 'May 6, 2025' },
        { id: 3, src: 'images/staff_3.jpg', caption: 'School Music Concert', date: 'May 8, 2025' },
        { id: 4, src: 'images/staff_3.jpg', caption: 'Drama Club Performance', date: 'May 10, 2025' },
        { id: 5, src: 'images/staff_3.jpg', caption: 'Art Painting Workshop', date: 'May 12, 2025' }
    ],
    trips: [
        { id: 1, src: 'images/staff_4.jpg', caption: 'Educational Museum Tour', date: 'April 20, 2025' },
        { id: 2, src: 'images/staff_4.jpg', caption: 'Nature Park Excursion', date: 'April 21, 2025' },
        { id: 3, src: 'images/staff_4.jpg', caption: 'Science Center Field Trip', date: 'April 25, 2025' },
        { id: 4, src: 'images/staff_4.jpg', caption: 'Historical Site Visit', date: 'April 28, 2025' },
        { id: 5, src: 'images/staff_4.jpg', caption: 'Botanical Garden Visit', date: 'April 30, 2025' }
    ],
    science: [
        { id: 1, src: 'images/staff_5.jpg', caption: 'Science Project Showcase', date: 'February 15, 2025' },
        { id: 2, src: 'images/staff_5.jpg', caption: 'Experiment Demonstration', date: 'February 16, 2025' },
        { id: 3, src: 'images/staff_5.jpg', caption: 'Robotics Club Presentation', date: 'February 18, 2025' },
        { id: 4, src: 'images/staff_5.jpg', caption: 'STEM Workshop', date: 'February 20, 2025' },
        { id: 5, src: 'images/staff_5.jpg', caption: 'Advanced Coding Class', date: 'February 22, 2025' }
    ],
    events: [
        { id: 1, src: 'images/staff_6.jpg', caption: 'Annual School Celebration', date: 'January 10, 2025' },
        { id: 2, src: 'images/staff_6.jpg', caption: 'School Cultural Festival', date: 'January 11, 2025' },
        { id: 3, src: 'images/staff_6.jpg', caption: 'Student Awards Ceremony', date: 'January 15, 2025' },
        { id: 4, src: 'images/staff_6.jpg', caption: 'Community Engagement Day', date: 'January 20, 2025' },
        { id: 5, src: 'images/staff_6.jpg', caption: 'School Book Fair', date: 'January 25, 2025' }
    ]
};

document.addEventListener('DOMContentLoaded', function() {
    // Initialize AOS animations
    AOS.init({
        duration: 800,
        easing: 'ease',
        once: true
    });
    
    // DOM Elements
    const albumsView = document.getElementById('albums-view');
    const photosView = document.getElementById('photos-view');
    const albumCards = document.querySelectorAll('.album-card');
    const backButton = document.getElementById('back-to-albums');
    const currentAlbumTitle = document.getElementById('current-album-title');
    const photosContainer = document.getElementById('photos-container');
    const viewOptions = document.querySelectorAll('.view-option');
    const selectAllPhotosBtn = document.createElement('button');
    const downloadSelectedBtn = document.createElement('button');
    
    // Create download buttons
    selectAllPhotosBtn.className = 'btn btn-outline-success me-2';
    selectAllPhotosBtn.innerHTML = '<i class="fas fa-check-square me-2"></i>Select All';
    downloadSelectedBtn.className = 'btn btn-primary';
    downloadSelectedBtn.innerHTML = '<i class="fas fa-download me-2"></i>Download Selected';
    
    // Function to add download buttons to photos view
    function addDownloadControls() {
        const controlsContainer = document.createElement('div');
        controlsContainer.className = 'd-flex justify-content-end mb-3';
        controlsContainer.appendChild(selectAllPhotosBtn);
        controlsContainer.appendChild(downloadSelectedBtn);
        photosView.insertBefore(controlsContainer, photosContainer);
    }
    
    // Check if elements exist before proceeding
    if (!albumsView || !photosView || !backButton || !currentAlbumTitle || !photosContainer) {
        console.error('Required DOM elements not found');
        return;
    }
    
    // Function to show albums view
    function showAlbums() {
        albumsView.classList.remove('d-none');
        photosView.classList.add('d-none');
    }
    
    // Back to albums event listener
    backButton.addEventListener('click', showAlbums);
    
    // View mode change
    viewOptions.forEach(option => {
        option.addEventListener('click', function() {
            const newView = this.getAttribute('data-view');
            changeView(newView);
            
            // Rerender photos with new view
            if (currentAlbum) {
                showPhotos(currentAlbum, currentAlbumTitle.textContent);
            }
        });
    });
    
    // Change view mode
    function changeView(view) {
        currentView = view;
        
        // Update view option buttons
        viewOptions.forEach(option => {
            option.classList.toggle('active', option.getAttribute('data-view') === view);
        });
    }
    
    // Attach click events to album cards
    albumCards.forEach(album => {
        album.addEventListener('click', function() {
            const albumType = this.getAttribute('data-album');
            const albumName = this.querySelector('.card-title').textContent;
            
            showPhotos(albumType, albumName);
        });
    });
    
    // Show photos for a specific album
    function showPhotos(albumType, albumName) {
        // Check if album data exists
        if (!albumData[albumType]) {
            console.error(`Album data not found for: ${albumType}`);
            return;
        }
        
        currentAlbum = albumType;
        currentAlbumTitle.textContent = albumName;
        
        // Clear photo container
        photosContainer.innerHTML = '';
        
        // Add download controls
        addDownloadControls();
        
        // Add photos with staggered animation
        const photos = albumData[albumType];
        photos.forEach((photo, index) => {
            const photoElement = createPhotoElement(photo, index);
            photosContainer.appendChild(photoElement);
        });
        
        // Switch to photos view
        albumsView.classList.add('d-none');
        photosView.classList.remove('d-none');
        
        // Add select and download functionality
        initPhotoSelection();
    }
    
    // Create individual photo element
    function createPhotoElement(photo, index) {
        const delay = (index % 5) * 100;
        const colClass = currentView === 'grid' ? 'col-md-4' : 'col-md-4 masonry-item';
        
        const photoCard = document.createElement('div');
        photoCard.className = colClass;
        photoCard.setAttribute('data-aos', 'fade-up');
        photoCard.setAttribute('data-aos-delay', delay);
        
        photoCard.innerHTML = `
            <div class="photo-card">
                <input type="checkbox" class="photo-checkbox" style="position: absolute; top: 10px; left: 10px; z-index: 10;">
                <img src="${photo.src}" alt="${photo.caption}" class="img-fluid">
                <div class="photo-info">
                    <p class="m-0">${photo.caption}</p>
                    <small class="text-muted">${photo.date}</small>
                </div>
                <a href="${photo.src}" class="download-btn" title="Download" download>
                    <i class="fas fa-download"></i>
                </a>
            </div>
        `;
        
        // Add click event to show modal
        const img = photoCard.querySelector('img');
        img.addEventListener('click', function() {
            showModal(photo);
        });
        
        return photoCard;
    }
    
    // Initialize photo selection functionality
    function initPhotoSelection() {
        const checkboxes = document.querySelectorAll('.photo-checkbox');
        
        // Select all photos
        selectAllPhotosBtn.addEventListener('click', function() {
            const allSelected = Array.from(checkboxes).every(cb => cb.checked);
            checkboxes.forEach(cb => cb.checked = !allSelected);
            updateSelectAllButton(!allSelected);
        });
        
        // Download selected photos
        downloadSelectedBtn.addEventListener('click', function() {
            const selectedPhotos = Array.from(checkboxes)
                .filter(cb => cb.checked)
                .map(cb => cb.closest('.photo-card').querySelector('img'));
            
            if (selectedPhotos.length === 0) {
                alert('Please select photos to download');
                return;
            }
            
            // Create ZIP file with selected photos
            downloadPhotosAsZip(selectedPhotos);
        });
        
        // Update select all button text
        function updateSelectAllButton(isSelectAll) {
            selectAllPhotosBtn.innerHTML = isSelectAll 
                ? '<i class="fas fa-check-square me-2"></i>Select All' 
                : '<i class="fas fa-square me-2"></i>Deselect All';
        }
    }
    
    // Download photos as ZIP
    function downloadPhotosAsZip(images) {
        // Use JSZip library to create ZIP file
        const zip = new JSZip();
        const folder = zip.folder(currentAlbumTitle.textContent);
        
        // Add images to ZIP
        const downloadPromises = images.map((img, index) => {
            return fetch(img.src)
                .then(response => response.blob())
                .then(blob => {
                    const fileName = `photo_${index + 1}_${img.alt.replace(/\s+/g, '_')}.jpg`;
                    folder.file(fileName, blob);
                });
        });
        
        // Generate and download ZIP
        Promise.all(downloadPromises).then(() => {
            zip.generateAsync({ type: 'blob' }).then(content => {
                const link = document.createElement('a');
                link.href = URL.createObjectURL(content);
                link.download = `${currentAlbumTitle.textContent}_photos.zip`;
                link.click();
            });
        });
    }
    
    // Show modal with photo details
    function showModal(photo) {
        const modalImage = document.getElementById('modal-image');
        const modalCaption = document.getElementById('modal-caption');
        const downloadLink = document.getElementById('download-link');
        
        if (modalImage && modalCaption && downloadLink) {
            modalImage.src = photo.src;
            modalCaption.textContent = photo.caption;
            downloadLink.href = photo.src;
            
            // Bootstrap modal show method
            const modalInstance = new bootstrap.Modal(document.getElementById('imageModal'));
            modalInstance.show();
        }
    }
    
    // Initialize the gallery
    function initGallery() {
        // Initial view is albums
        showAlbums();
        
        // Set grid as default view
        changeView('grid');
        
        // Hide loader when everything is loaded
        window.addEventListener('load', function() {
            const loader = document.querySelector('.loader');
            if (loader) {
                loader.style.display = 'none';
            }
        });
    }
    
    // Initialize the gallery when DOM is loaded
    initGallery();
});