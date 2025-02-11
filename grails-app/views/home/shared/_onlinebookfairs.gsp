<section class="online-book-fairs-section">
    <div class="container">
        <div class="row align-items-center">
            <!-- Kolom Gambar (6 kolom) -->
            <div class="col-lg-6">
                <div class="book-images">
                    <img class="img-fluid rotated left" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                    <img class="img-fluid rotated center" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                    <img class="img-fluid rotated right" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                </div>
            </div>

            <!-- Kolom Teks (6 kolom) -->
            <div class="col-lg-6 text-content">
                <h2 class="section-title">Online Book Fairs</h2>

                <p class="section-description">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                </p>
                <button class="btn-primary">Create Account</button>
            </div>
        </div>
    </div>
</section>