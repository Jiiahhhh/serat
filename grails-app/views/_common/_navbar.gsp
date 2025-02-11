<asset:stylesheet src="styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <div class="row w-100 align-items-center">
            <!-- Logo Serat (2 kolom) -->
            <div class="col-2">
                <a href="#">
                    <img src="${createLink(controller: 'image', action: 'showImage',
                            params: [fileName: '/brand_logo.svg'])}">
                </a>
            </div>

            <!-- Menu (5 kolom) -->
            <div class="col-4">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Category
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Fiction</a>
                            <a class="dropdown-item" href="#">Non-Fiction</a>
                            <a class="dropdown-item" href="#">Science</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">New Arrivals</a>
                    </li>
                </ul>
            </div>

            <!-- Search Bar (3 kolom) -->
            <div class="col-lg-6">
                <div class="d-flex align-items-center">
                    <!-- Search Bar -->
                    <form class="form-inline my-2 my-lg-0 mr-3 search-form">
                        <div class="search-container">
                            <input type="text" class="search-input" placeholder="Search" aria-label="Search">
                            <button type="submit" class="search-btn">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </form>

                    <!-- Favorite & Sign In Buttons -->
                    <ul class="navbar-nav d-flex flex-row align-items-center">
                        <!-- Favorite Button -->
                        <li class="nav-item me-3">
                            <a href="" class="icon-btn">
                                <i class="fas fa-heart"></i>
                            </a>
                        </li>

                        <!-- Sign In Button -->
                        <li class="nav-item">
                            <a href="${createLink(controller: 'login', action: 'index')}" class="icon-btn sign-in-btn">
                                <span>Sign In</span>
                                <i class="fas fa-user"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>