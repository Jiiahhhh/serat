<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <asset:stylesheet src="login.css"/>
    <title>Login - Serat</title>
</head>

<body>
<div class="container d-flex align-items-center min-vh-100">
    <div class="row w-100">
        <div class="col-lg-7 d-flex align-items-center">
            <div class="login-form w-100">
                <h1 class="mb-4">Login</h1>

                <form action="#" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="username@gmail.com" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            <span class="input-group-text toggle-password"><i class="bi bi-eye"></i></span>
                        </div>
                    </div>

                    <div class="mb-3">
                        <a href="#" class="text-decoration-none">Forget Password?</a>
                    </div>

                    <button type="submit" class="btn btn-dark w-100">Sign in</button>
                </form>

                <div class="text-center mt-4">
                    <p>or continue with</p>
                    <div class="oauth-buttons">
                        <a href="#" class="btn oauth-btn">
                            <img src="https://cdn-icons-png.flaticon.com/512/720/720255.png" alt="Google">
                        </a>
                        <a href="#" class="btn oauth-btn">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png" alt="Facebook">
                        </a>
                    </div>
                </div>

                <p class="text-center mt-3">
                    Don't have an account yet?
                    <a href="#" class="text-decoration-none">Register for free</a>
                </p>
            </div>
        </div>

        <div class="col-lg-5 d-none d-lg-block">
            <div class="decor-image">
                <img class="book-cover flex-shrink-0"
                     src="${createLink(controller: 'image', action: 'showImage',
                             params: [fileName: '/bg_login.png'])}"
                     alt="Bumi Manusia">
                <div class="overlay">
                    <img src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/brand_logo_white.svg'])}">
                </div>
            </div>
        </div>
    </div>
</div>

<asset:javascript src="login.js"/>
</body>
</html>