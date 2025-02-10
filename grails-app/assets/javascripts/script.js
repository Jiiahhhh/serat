document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.getElementById("carousel");
    const prevBtn = document.getElementById("prevBtn");
    const nextBtn = document.getElementById("nextBtn");
    const dots = document.querySelectorAll(".dot");

    let currentIndex = 0;
    const totalItems = document.querySelectorAll(".carousel-item").length;

    function updateCarousel() {
        const offset = -currentIndex * 320; // Lebar satu item
        carousel.style.transform = `translateX(${offset}px)`;

        // Update indikator
        dots.forEach((dot, index) => {
            dot.classList.toggle("active", index === currentIndex);
        });

        // Disable tombol jika di batas
        prevBtn.disabled = currentIndex === 0;
        nextBtn.disabled = currentIndex === totalItems - 1;
    }

    nextBtn.addEventListener("click", function () {
        if (currentIndex < totalItems - 1) {
            currentIndex++;
            updateCarousel();
        }
    });

    prevBtn.addEventListener("click", function () {
        if (currentIndex > 0) {
            currentIndex--;
            updateCarousel();
        }
    });

    dots.forEach((dot, index) => {
        dot.addEventListener("click", function () {
            currentIndex = index;
            updateCarousel();
        });
    });

    updateCarousel();
});
