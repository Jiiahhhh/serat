<section class="categories-section">
    <div class="container">
        <h2 class="section-title">Categories</h2>

        <div class="row">
            <!-- Persegi Panjang 1 (Bottom Rounded) -->
            <div class="col-lg-4">
                <div class="category-box bottom-rounded">
                    <img class="category-box bottom-rounded" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                </div>

                <h3 class="category-title">Novel</h3>
            </div>

            <!-- Persegi Panjang 2 (Top Rounded) -->
            <div class="col-lg-4">
                <div class="category-box top-rounded">
                    <img class="category-box top-rounded" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                </div>

                <h3 class="category-title">Fiction</h3>
            </div>

            <!-- Persegi Panjang 3 (Bottom Rounded) -->
            <div class="col-lg-4">
                <div class="category-box bottom-rounded">
                    <img class="category-box bottom-rounded" src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/book_cover/bumi_manusia.jpg'])}">
                </div>

                <h3 class="category-title">History</h3>
            </div>
        </div>

        <div class="text-center mt-4">
            <button class="btn btn-primary">See All</button>
        </div>
    </div>
</section>