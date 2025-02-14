<asset:stylesheet src="styles.css"/>
<section class="hero-section">
    <div class="container">
        <div class="row align-items-center">
            <!-- Text Column (5 Columns) -->
            <div class="col-lg-5 text-content">
                <div class="hero-header">
                    <div class="icon">
                        <img src="${createLink(controller: 'image', action: 'showImage', params: [fileName: '/book_shape.svg'])}">
                    </div>

                    <h1>Find Your</h1>
                </div>

                <h1>Next Book</h1>

                <p class="description">
                    Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                </p>
                <a href="${createLink(controller: 'search', action: 'index')}">
                    <button class="btn btn-primary">Explore Now</button>
                </a>
            </div>

            <!-- Image Column (7 Columns) -->
            <div class="col-lg-7">
                <div class="row justify-content-center">
                    <g:each var="book" in="${randomBooks}">
                        <div class="col-lg-4 book-box text-center">
                            <a href="${createLink(controller: 'detail', action: 'index', id: book.id)}">
                                <img class="image-box top-rounded" alt="${book.title}"
                                     src="${createLink(controller: 'image', action: 'showImage', params: [fileName: book.cover])}">

                                <p class="book-title">${book.title}</p>

                                <p class="author">${book.author}</p>
                            </a>
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </div>
</section>
