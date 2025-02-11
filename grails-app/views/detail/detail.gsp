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
<g:render template="/_common/navbar"/>
<div class="container py-5">
    <div class="row">
        <div class="col-lg-7">
            <div class="book-detail d-flex">
                <img class="book-cover flex-shrink-0"
                     src="${createLink(controller: 'image', action: 'showImage',
                             params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                     alt="Bumi Manusia">

                <div class="book-info flex-grow-1">
                    <h1 class="book-title">Bumi Manusia</h1>

                    <p class="book-author">By Pramoedya Ananta Toer</p>

                    <p class="book-meta">| ⭐ 4.75 / 5 (10,000 votes) | 📖 10M Read</p>

                    <div class="buttons">
                        <a href="#" class="btn btn-dark">Read Book</a>
                        <a href="#" class="btn btn-outline-dark">Download</a>
                    </div>
                </div>
            </div>

            %{--            Synopsis--}%
            <h3 class="mt-4">Synopsis</h3>

            <p class="book-synopsis">
                This Earth of Mankind tells the story of Minke. He is a Javanese minor royal who studies at a Dutch Hogere Burger School. At that time, usually only Europeans could study there. Minke is a talented young writer. His writing is published in several Dutch-language journals. They are popular. But many of Minke's classmates hate him because he is native. His classmates are all at least partly European descent.
            </p>

            %{--            Tags--}%
            <div>
                <span class="badge bg-secondary">Fiction</span>
                <span class="badge bg-secondary">History</span>
            </div>

            %{--            Additional Info--}%
            <h3 class="mt-4">Additional Information</h3>
            <table class="table">
                <tbody>
                <tr>
                    <td><strong>Publisher</strong></td>
                    <td>Kepustakaan Populer Gramedia</td>
                    <td><strong>Release on</strong></td>
                    <td>August 25, 1980</td>
                </tr>
                <tr>
                    <td><strong>Language</strong></td>
                    <td>Bahasa Indonesia</td>
                    <td><strong>Genre</strong></td>
                    <td>Fiction, History</td>
                </tr>
                <tr>
                    <td><strong>Pages</strong></td>
                    <td>544</td>
                </tr>
                </tbody>
            </table>
            <button class="btn btn-dark w-100 mt-3">See Comment</button>
        </div>

        <div class="col-lg-5">
            <h3 class="mb-3">Book Recommendation</h3>

            <div class="recommended-books">
                <div class="card book-card mb-3 d-flex flex-row">
                    <img class="book-card-img flex-shrink-0"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                         alt="Bumi Manusia">

                    <div class="card-body">
                        <h5 class="card-title">Bumi Manusia</h5>

                        <p class="card-author">By Pramodya Ananta Toer</p>

                        <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                        <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                        <a href="#" class="btn btn-primary">Read Now</a>
                    </div>
                </div>
                <div class="card book-card mb-3 d-flex flex-row">
                    <img class="book-card-img flex-shrink-0"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                         alt="Bumi Manusia">

                    <div class="card-body">
                        <h5 class="card-title">Bumi Manusia</h5>

                        <p class="card-author">By Pramodya Ananta Toer</p>

                        <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                        <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                        <a href="#" class="btn btn-primary">Read Now</a>
                    </div>
                </div>
                <div class="card book-card mb-3 d-flex flex-row">
                    <img class="book-card-img flex-shrink-0"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                         alt="Bumi Manusia">

                    <div class="card-body">
                        <h5 class="card-title">Bumi Manusia</h5>

                        <p class="card-author">By Pramodya Ananta Toer</p>

                        <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                        <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                        <a href="#" class="btn btn-primary">Read Now</a>
                    </div>
                </div>
                <div class="card book-card mb-3 d-flex flex-row">
                    <img class="book-card-img flex-shrink-0"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                         alt="Bumi Manusia">

                    <div class="card-body">
                        <h5 class="card-title">Bumi Manusia</h5>

                        <p class="card-author">By Pramodya Ananta Toer</p>

                        <p class="card-rating">⭐ 4.75 / 5 (10,000 voters)</p>

                        <p class="card-text">lorem ipsum asadfha0fqaofh0iaj dfjq0ifjh0iq</p>
                        <a href="#" class="btn btn-primary">Read Now</a>
                    </div>
                </div>
                <div class="card book-card mb-3 d-flex flex-row">
                    <img class="book-card-img flex-shrink-0"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/book_cover/bumi_manusia.jpg'])}"
                         alt="Bumi Manusia">

                    <div class="card-body">
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
</div>
<g:render template="/_common/footer"/>
<asset:javascript src="bookDetail.js"/>
</body>
</html>