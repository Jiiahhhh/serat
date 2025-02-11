<asset:stylesheet src="styles.css"/>
<section class="hero-section">
    <div class="container">
        <div class="row align-items-center">
            <!-- Kolom Teks (5 kolom) -->
            <div class="col-lg-5 text-content">
                <div class="hero-header">
                    <div class="icon">
                        <img src="${createLink(controller: 'image', action: 'showImage',
                                params: [fileName: '/book_shape.svg'])}">
                    </div>

                    <h1>Find Your</h1>
                </div>

                <h1>Next Book</h1>

                <p class="description">
                    Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                </p>
                <button class="btn btn-primary">Explore Now</button>
            </div>

            <!-- Kolom Gambar (7 kolom) -->
            <div class="col-lg-7">
                <div class="row justify-content-center">
                    <!-- Gambar 1 (Top Rounded) -->
                    <div class="col-lg-4 book-box text-center">
                        <img class="image-box top-rounded" src="${createLink(controller: 'image', action: 'showImage',
                                params: [fileName: '/book_cover/bumi_manusia.jpg'])}">

                        <p class="book-title">Bumi Manusia</p>
                        <p class="author">Pramoedya Ananta Toer</p>
                    </div>

                    <!-- Gambar 2 (Bottom Rounded, lebih kecil dan ke bawah) -->
                    <div class="col-lg-4 book-box text-center">
                        <p class="book-title">Filosofi Teras</p>

                        <p class="author">Henry Manampiring</p>
                        <img class="image-box bottom-rounded"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/book_cover/filosofi_teras.jpg'])}">
                    </div>

                    <!-- Gambar 3 (Top Rounded) -->
                    <div class="col-lg-4 book-box text-center">
                        <img class="image-box top-rounded"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/book_cover/cuci_piring.jpg'])}">

                        <p class="book-title">Seorang Pria yang Melalui Duka dengan Mencuci Piring</p>

                        <p class="author">Andreas Kurniawan</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>