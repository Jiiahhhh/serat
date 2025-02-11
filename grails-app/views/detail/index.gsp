<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>{book.title} - Book Detail</title>
    <asset:stylesheet src="bookDetail.css"/>
</head>

<body>
<div class="container py-5">
    <div class="row">
        <div class="col-lg-7">
            <div class="book-detail d-flex">
                <img class="book-cover flex-shrink-0"
                     src="${createLink(controller: 'image', action: 'showImage',
                             params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                     alt="${book.title}">

                <div class="book-info flex-grow-1">
                    <h1 class="book-title">${book.title}</h1>

                    <p class="book-author">By ${book.author}</p>

                    <p class="book-meta">${book.releaseDate} | ⭐ ${book.rating} / 5 (${book.votes} votes) | 📖 ${book.readers}M Read</p>

                    <div class="buttons">
                        <a href="${book.readLink}" class="btn btn-dark">Read Book</a>
                        <a href="${book.downloadLink}" class="btn btn-outline-dark">Download</a>
                    </div>
                </div>
            </div>

            %{--            Synopsis--}%
            <h3 class="mt-4">Synopsis</h3>

            <p class="book-synopsis">${book.synopsis}</p>

            %{--            Tags--}%
            <div>
                <g:each var="tag" in="${book.tags}">
                    <span class="badge bg-secondary">${tag}</span>
                </g:each>
            </div>

            %{--            Additional Info--}%
            <h3 class="mt-4">Additional Information</h3>
            <table class="table">
                <tbody>
                <tr>
                    <td><strong>Publisher</strong></td>
                    <td>${book.publisher}</td>
                    <td><strong>Release on</strong></td>
                    <td>${book.releaseDate}</td>
                </tr>
                <tr>
                    <td><strong>Language</strong></td>
                    <td>${book.language}</td>
                    <td><strong>Genre</strong></td>
                    <td>${book.genre}</td>
                </tr>
                <tr>
                    <td><strong>Pages</strong></td>
                    <td>${book.pages}</td>
                </tr>
                </tbody>
            </table>
            <button class="btn btn-dark w-100 mt-3">See Comment</button>
        </div>

        <div class="col-lg-5">
            <h3 class="mb-3">Book Recommendation</h3>
            <div class="recommended-books">
                <g:each var="recommendedBook" in="${recommendedBooks}">\
                    <div class="card book-card mb-3 d-flex flex-row">
                        <img class="book-card-img flex-shrink-0"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                             alt="${recommendedBook.title}">

                        <div class="card-body">
                            <h5 class="card-title">Bumi Manusia</h5>
                            <p class="card-author">By Pramodya Ananta Toer</p>
                            <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>
                            <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                            <a href="#" class="btn btn-primary">Read Now</a>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
    </div>
</div>
<asset:javascript src="bookDetail.js"/>
</body>
</html>