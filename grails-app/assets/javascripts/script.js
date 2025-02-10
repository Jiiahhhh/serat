$(document).ready(function () {
    let currentIndex = 0;

    function moveSlide(direction) {
        const slides = document.querySelectorAll('.carousel-item');
        const totalSlides = slides.length;
        const track = document.querySelector('.carousel-track');

        currentIndex += direction;

        if (currentIndex >= totalSlides) {
            currentIndex = 0;
        } else if (currentIndex < 0) {
            currentIndex = totalSlides - 1;
        }

        updateCarousel();
    }

    function currentSlide(index) {
        currentIndex = index;
        updateCarousel();
    }

    function updateCarousel() {
        const track = document.querySelector('.carousel-track');
        const dots = document.querySelectorAll('.dot');

        track.style.transform = `translateX(-${currentIndex * 100}%)`;

        dots.forEach((dot, i) => {
            dot.classList.remove('active');
            if (i === currentIndex) {
                dot.classList.add('active');
            }
        });
    }

    // 🚀 **Tambahkan event listener untuk tombol navigasi**
    document.querySelector(".prev").addEventListener("click", function () {
        moveSlide(-1);
    });

    document.querySelector(".next").addEventListener("click", function () {
        moveSlide(1);
    });

    // 🚀 **Tambahkan event listener untuk dot indicator**
    document.querySelectorAll(".dot").forEach((dot, index) => {
        dot.addEventListener("click", function () {
            currentSlide(index);
        });
    });

    // **Jalankan carousel pertama kali**
    updateCarousel();
});
