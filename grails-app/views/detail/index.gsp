<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>${book.title} - Book Detail</title>
    <asset:stylesheet src="bookDetail.css"/>
</head>

<body>
<g:render template="/_common/navbar"/>
<div class="container py-5">
    <div class="row">
        <div class="col-lg-8">
            <div class="book-detail d-flex">
                <img class="book-cover flex-shrink-0"
                     src="${createLink(controller: 'image', action: 'showImage',
                             params: [fileName: book.cover])}"
                     alt="${book.title}">

                <div class="book-info flex-grow-1">
                    <h1 class="book-title">${book.title}</h1>

                    <p class="book-author">By ${book.author}</p>

                    <p class="book-meta">${formattedReleaseDate} | ⭐ ${book.rating} / 5 (<custom:shortNumber value="${book.votes}"/> votes)
                    | 📖 <custom:shortNumber value="${book.readers}"/> Read</p>

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
                    <td>${formattedReleaseDate}</td>
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

        <div class="col-lg-4">
            <h3 class="mb-3">Book Recommendation</h3>
            <div class="recommended-books">
                <g:each var="recommendedBook" in="${recommendedBooks}">
                    <div class="card book-card mb-3 d-flex flex-row">
                        <img class="book-card-img flex-shrink-0"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: recommendedBook.cover])}"
                             alt="${recommendedBook.title}">

                        <div class="card-body">
                            <h5 class="card-title">${recommendedBook.title}</h5>
                            <p class="card-author">${recommendedBook.author}</p>
                            <p class="card-rating">⭐ ${recommendedBook.rating} / 5 (<custom:shortNumber value="${book.votes}"/> votes)</p>
                            ${recommendedBook.synopsis?.substring(0, Math.min(recommendedBook.synopsis.size(), 100))}...
                            <a href="${createLink(controller: 'detail', action: 'index', id: recommendedBook.id)}" class="btn btn-primary">Read Now</a>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
    </div>
</div>
<g:render template="/_common/footer"/>
<asset:javascript src="bookDetail.js"/>
</body>
</html>