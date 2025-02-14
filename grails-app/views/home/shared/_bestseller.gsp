<section class="best-seller-section">
    <div class="container">
        <h2 class="section-title">Best Seller</h2>

        <div class="row">
            <g:each var="book" in="${bestSellerBooks}">
                <div class="col-lg-3 col-md-6">
                    <div class="book-card">
                        <a href="${createLink(controller: 'detail', action: 'index', id: book.id)}">
                            <img class="image-box" src="${createLink(controller: 'image', action: 'showImage',
                                    params: [fileName: book.cover])}" alt="${book.title}">
                        </a>
                        <h3 class="book-title">${book.title}</h3>
                        <p class="book-author">Author: ${book.author}</p>
                        <p class="book-readers">📖 <g:formatNumber number="${book.readers}" format="###,###,###" /> Reads</p>
                        <a href="${createLink(controller: 'detail', action: 'index', id: book.id)}" class="btn btn-primary">Read Now</a>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</section>
