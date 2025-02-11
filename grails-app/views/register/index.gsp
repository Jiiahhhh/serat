<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet src="register.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Register - Serat</title>
</head>

<body>
<div class="container d-flex align-items-center min-vh-100">
    <div class="row w-100">
        <div class="col-lg-7">
            <div class="register-form w-100">
                <h1 class="mb-4">Register</h1>

                <form action="#" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="fullName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Full Name" required>
                    </div>

                    <div class="mb-3">
                        <label for="mobile" class="form-label">Phone Number</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="+62" required>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="username@gmail.com" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                    </div>

                    <div class="mb-3">
                        <label for="confirmPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
                    </div>

                    <button type="submit" class="btn btn-dark w-100">Register</button>
                </form>
            </div>
        </div>

        <div class="col-lg-5">
            <div class="profile-picture-section">
                <h3>Profile Picture</h3>
                <div class="profile-image mb-3">
                    <img class="img-fluid rounded-circle" id="profileImage"
                         src="${createLink(controller: 'image', action: 'showImage',
                                 params: [fileName: '/'])}">
                    <div class="overlay d-none" id="imageOverlay">
                        <button class="btn btn-outline-light">Upload Image</button>
                    </div>
                </div>

                <p>or</p>
                <div class="avatar-section">
                    <button class="avatar-btn" id="avatar1">
                        <img class="img-fluid rounded-circle"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/'])}">
                    </button>

                    <button class="avatar-btn" id="avatar2">
                        <img class="img-fluid rounded-circle"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/'])}">
                    </button>
                    <button class="avatar-btn" id="avatar3">
                        <img class="img-fluid rounded-circle"
                             src="${createLink(controller: 'image', action: 'showImage',
                                     params: [fileName: '/'])}">
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<asset:javascript src="register.js"/>

</body>
</html>