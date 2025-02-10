<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet src="search.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <title>Book Search Results</title>
</head>

<body>
<div class="main-content">
    <g:render template="/_common/navbar"/>
    <div class="container py-5">

        <div class="row">
            <!-- Filter Section -->
            <div class="col-lg-3">
                <div class="filters">
                    <h3 class="fw-bold">Filters</h3>

                    <!-- Category -->
                    <h5>Category</h5>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="categoryNovel">
                        <label for="categoryNovel" class="form-check-label">Novel</label>
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="categoryNonFiction">
                        <label for="categoryNonFiction" class="form-check-label">Non-Fiction</label>
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="categoryHistory">
                        <label for="categoryHistory" class="form-check-label">History</label>
                    </div>

                    <!-- Language -->
                    <h5 class="mt-3">Language</h5>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="languageEnglish">
                        <label for="languageEnglish" class="form-check-label">English</label>
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="languageFrench">
                        <label for="languageFrench" class="form-check-label">French</label>
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="languageBahasa">
                        <label for="languageBahasa" class="form-check-label">Bahasa Indonesia</label>
                    </div>

                    <!-- Range Slider Year -->
                    <h5 class="mt-3">Year</h5>
                    <div id="yearRangeSlider"></div>
                    <p>Year: <span id="yearMin">1900</span> - <span id="yearMax">2025</span></p>
                    <input type="hidden" id="yearMinInput" value="1900">
                    <input type="hidden" id="yearMaxInput" value="2025">


                    <!-- Rating -->
                    <h5 class="mt-3">Rating</h5>

                    <div class="rating">
                        <span class="star" data-value="1">★</span>
                        <span class="star" data-value="2">★</span>
                        <span class="star" data-value="3">★</span>
                        <span class="star" data-value="4">★</span>
                        <span class="star" data-value="5">★</span>
                    </div>
                </div>
            </div>

            <!-- Search Results Section -->
            <div class="col-lg-9">
                <div class="row gx-3 gy-4 mx-0" id="bookResults">
                    <div class="col-md-6">
                        <div class="card book-card d-flex flex-row">
                            <!-- Cover Buku -->
                            <img class="card-img-left flex-shrink-0"
                                 src="${createLink(controller: 'image', action: 'showImage',
                                         params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                                 alt="Bumi Manusia">

                            <!-- Detail Buku -->
                            <div class="card-body flex-grow-1">
                                <h5 class="card-title">Bumi Manusia</h5>

                                <p class="card-author">By Pramodya Ananta Toer</p>

                                <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                                <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                                <a href="#" class="btn btn-primary">Read Now</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card book-card d-flex flex-row">
                            <!-- Cover Buku -->
                            <img class="card-img-left flex-shrink-0"
                                 src="${createLink(controller: 'image', action: 'showImage',
                                         params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                                 alt="Bumi Manusia">

                            <!-- Detail Buku -->
                            <div class="card-body flex-grow-1">
                                <h5 class="card-title">Bumi Manusia</h5>

                                <p class="card-author">By Pramodya Ananta Toer</p>

                                <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                                <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                                <a href="#" class="btn btn-primary">Read Now</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card book-card d-flex flex-row">
                            <!-- Cover Buku -->
                            <img class="card-img-left flex-shrink-0"
                                 src="${createLink(controller: 'image', action: 'showImage',
                                         params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                                 alt="Bumi Manusia">

                            <!-- Detail Buku -->
                            <div class="card-body flex-grow-1">
                                <h5 class="card-title">Bumi Manusia</h5>

                                <p class="card-author">By Pramodya Ananta Toer</p>

                                <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                                <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                                <a href="#" class="btn btn-primary">Read Now</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card book-card d-flex flex-row">
                            <!-- Cover Buku -->
                            <img class="card-img-left flex-shrink-0"
                                 src="${createLink(controller: 'image', action: 'showImage',
                                         params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                                 alt="Bumi Manusia">

                            <!-- Detail Buku -->
                            <div class="card-body flex-grow-1">
                                <h5 class="card-title">Bumi Manusia</h5>

                                <p class="card-author">By Pramodya Ananta Toer</p>

                                <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                                <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                                <a href="#" class="btn btn-primary">Read Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            %{--        <!-- Search Results Section -->--}%
            %{--        <div class="col-lg-9">--}%
            %{--            <div class="row gx-3 gy-4 mx-0" id="bookResults">--}%
            %{--                <g:each var="book" in="${books}">--}%
            %{--                    <div class="col-md-6">--}%
            %{--                        <div class="card book-card d-flex flex-row">--}%
            %{--                            <!-- Cover Buku -->--}%
            %{--                            <img class="card-img-left flex-shrink-0"--}%
            %{--                                 src="${createLink(controller: 'image', action: 'showImage',--}%
            %{--                                         params: [fileName: '/book_cover/' + book.cover])}"--}%
            %{--                                 alt="${book.title}">--}%

            %{--                            <!-- Detail Buku -->--}%
            %{--                            <div class="card-body flex-grow-1">--}%
            %{--                                <h5 class="card-title">${book.title}</h5>--}%
            %{--                                <p class="card-author">By ${book.author}</p>--}%
            %{--                                <p class="card-rating">⭐ ${book.rating} / 5 (${book.votes} voters)</p>--}%
            %{--                                <p class="card-text">${book.description}</p>--}%
            %{--                                <a href="${book.link}" class="btn btn-primary">Read Now</a>--}%
            %{--                            </div>--}%
            %{--                        </div>--}%
            %{--                    </div>--}%
            %{--                </g:each>--}%
            %{--            </div>--}%
            %{--        </div>--}%
        </div>
    </div>
    <g:render template="/_common/footer"/>
</div>

<asset:javascript src="search.js"/>

</body>
</html>
