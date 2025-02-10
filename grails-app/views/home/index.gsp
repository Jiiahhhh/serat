<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 08/02/25
  Time: 08.08
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Homepage Serat</title>
    <asset:stylesheet src="styles.css"/>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <div class="row w-100 align-items-center">
            <!-- Logo Serat (2 kolom) -->
            <div class="col-2">
                <a class="navbar-brand" href="#">Serat</a>
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
                            <a href="#" class="icon-btn">
                                <i class="fas fa-heart"></i>
                            </a>
                        </li>

                        <!-- Sign In Button -->
                        <li class="nav-item">
                            <a href="#" class="icon-btn sign-in-btn">
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

<section class="hero-section">
    <div class="container">
        <div class="row align-items-center">
            <!-- Kolom Teks (5 kolom) -->
            <div class="col-lg-5 text-content">
                <div class="icon">
                    <img src="${resource(dir: 'images', file: 'book-icon.png')}" alt="Book Icon">
                </div>
                <h1>Find Your <br><span class="highlight">Next Book</span></h1>
                <p class="description">
                    Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                </p>
                <button class="btn btn-secondary">Explore Now</button>
            </div>

            <!-- Kolom Gambar (7 kolom) -->
            <div class="col-lg-7">
                <div class="row justify-content-center">
                    <!-- Gambar 1 (Top Rounded) -->
                    <div class="col-lg-4 book-box text-center">
                        <div class="image-box top-rounded"></div>
                        <p class="book-title">The Shawshank Redemption</p>
                        <p class="author">Author</p>
                    </div>

                    <!-- Gambar 2 (Bottom Rounded, lebih kecil dan ke bawah) -->
                    <div class="col-lg-4 book-box text-center">
                        <p class="book-title">The Shawshank Redemption</p>
                        <p class="author">Author</p>
                        <div class="image-box bottom-rounded small-box"></div>
                    </div>

                    <!-- Gambar 3 (Top Rounded) -->
                    <div class="col-lg-4 book-box text-center">
                        <div class="image-box top-rounded"></div>
                        <p class="book-title">The Shawshank Redemption</p>
                        <p class="author">Author</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="best-seller-section">
    <div class="container">
        <h2 class="section-title">Best Seller</h2>

        <div class="row">
            <!-- Buku 1 -->
            <div class="col-lg-3 col-md-6">
                <div class="book-card">
                    <h3 class="book-title">The Shawshank Redemption</h3>

                    <p class="book-author">Author:</p>
                    <button class="btn btn-primary">Read Now</button>
                </div>
            </div>

            <!-- Buku 2 -->
            <div class="col-lg-3 col-md-6">
                <div class="book-card">
                    <h3 class="book-title">The Shawshank Redemption</h3>

                    <p class="book-author">Author:</p>
                    <button class="btn btn-primary">Read Now</button>
                </div>
            </div>

            <!-- Buku 3 -->
            <div class="col-lg-3 col-md-6">
                <div class="book-card">
                    <h3 class="book-title">The Shawshank Redemption</h3>

                    <p class="book-author">Author:</p>
                    <button class="btn btn-primary">Read Now</button>
                </div>
            </div>

            <!-- Buku 4 -->
            <div class="col-lg-3 col-md-6">
                <div class="book-card">
                    <h3 class="book-title">The Shawshank Redemption</h3>

                    <p class="book-author">Author:</p>
                    <button class="btn btn-primary">Read Now</button>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="online-book-fairs-section">
    <div class="container">
        <div class="row align-items-center">
            <!-- Kolom Gambar (6 kolom) -->
            <div class="col-lg-6">
                <div class="book-images">
                    <img src="https://via.placeholder.com/250x350" alt="Book 1" class="img-fluid rotated left">
                    <img src="https://via.placeholder.com/250x350" alt="Book 2" class="img-fluid rotated center">
                    <img src="https://via.placeholder.com/250x350" alt="Book 3" class="img-fluid rotated right">
                </div>
            </div>

            <!-- Kolom Teks (6 kolom) -->
            <div class="col-lg-6 text-content">
                <h2 class="section-title">Online Book Fairs</h2>

                <p class="section-description">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                </p>
                <button class="btn-primary">Create Account</button>
            </div>
        </div>
    </div>
</section>

<section class="categories-section">
    <div class="container">
        <h2 class="section-title">Categories</h2>

        <div class="row">
            <!-- Persegi Panjang 1 (Bottom Rounded) -->
            <div class="col-lg-4">
                <div class="category-box bottom-rounded">
                    <div class="category-content">
                        <!-- Konten bisa ditambahkan di sini (gambar, teks, dll.) -->
                    </div>
                </div>

                <h3 class="category-title">Novel</h3>
            </div>

            <!-- Persegi Panjang 2 (Top Rounded) -->
            <div class="col-lg-4">
                <div class="category-box top-rounded">
                    <div class="category-content">
                        <!-- Konten bisa ditambahkan di sini (gambar, teks, dll.) -->
                    </div>
                </div>

                <h3 class="category-title">Fiction</h3>
            </div>

            <!-- Persegi Panjang 3 (Bottom Rounded) -->
            <div class="col-lg-4">
                <div class="category-box bottom-rounded">
                    <div class="category-content">
                        <!-- Konten bisa ditambahkan di sini (gambar, teks, dll.) -->
                    </div>
                </div>

                <h3 class="category-title">History</h3>
            </div>
        </div>

        <div class="text-center mt-4">
            <button class="btn btn-primary">See All</button>
        </div>
    </div>
</section>

%{--<section class="carousel-container">--}%
%{--    <h2>Get to Know</h2>--}%
%{--    <div class="carousel">--}%
%{--        <div class="carousel-track">--}%
%{--            <div class="carousel-item">--}%
%{--                <div class="card">--}%
%{--                    <h3>Name:</h3>--}%
%{--                    <h2>Muhammad Ijlal Nurhadi</h2>--}%
%{--                    <p><strong>About the author:</strong></p>--}%
%{--                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--            <div class="carousel-item">--}%
%{--                <div class="card">--}%
%{--                    <h3>Name:</h3>--}%
%{--                    <h2>Muhammad Ijlal Nurhadi</h2>--}%
%{--                    <p><strong>About the author:</strong></p>--}%
%{--                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--            <div class="carousel-item">--}%
%{--                <div class="card">--}%
%{--                    <h3>Name:</h3>--}%
%{--                    <h2>Muhammad Ijlal Nurhadi</h2>--}%
%{--                    <p><strong>About the author:</strong></p>--}%
%{--                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--        <button class="carousel-btn prev" onclick="moveSlide(-1)">&#10094;</button>--}%
%{--        <button class="carousel-btn next" onclick="moveSlide(1)">&#10095;</button>--}%
%{--    </div>--}%
%{--    <div class="carousel-dots">--}%
%{--        <span class="dot active" onclick="currentSlide(0)"></span>--}%
%{--        <span class="dot" onclick="currentSlide(1)"></span>--}%
%{--        <span class="dot" onclick="currentSlide(2)"></span>--}%
%{--    </div>--}%
%{--</section>--}%

<div class="carousel-container">
    <!-- Wrapper untuk item -->
    <div class="carousel-wrapper" id="carousel">
        <div class="carousel-item">
            <div class="content">
                <p class="title">Name:</p>
                <h2>Muhammad Ijlal Nurhadi</h2>
                <p class="subtitle">About the author:</p>
                <p class="description">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry...
                </p>
            </div>
            <div class="overlay"></div>
        </div>

        <div class="carousel-item">
            <div class="content">
                <p class="title">Name:</p>
                <h2>Jane Doe</h2>
                <p class="subtitle">About the author:</p>
                <p class="description">
                    Jane Doe is an accomplished author with multiple best-selling books...
                </p>
            </div>
            <div class="overlay"></div>
        </div>

        <div class="carousel-item">
            <div class="content">
                <p class="title">Name:</p>
                <h2>John Smith</h2>
                <p class="subtitle">About the author:</p>
                <p class="description">
                    John Smith has been an influential writer in the literary world for decades...
                </p>
            </div>
            <div class="overlay"></div>
        </div>
    </div>

    <!-- Navigasi -->
    <div class="carousel-nav">
        <button id="prevBtn">Previous</button>
        <button id="nextBtn">Next</button>
    </div>

    <!-- Indicator -->
    <div class="carousel-indicators">
        <span class="dot active"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</div>

<footer class="site-footer">
    <div class="container">
        <div class="footer-content">
            <!-- Logo -->
            <div class="footer-logo">
                <img src="${resource(dir: 'images', file: 'logo.png')}" alt="Serat Logo">
                <span class="footer-brand">Serat</span>
            </div>

            <!-- Footer Menu -->
            <ul class="footer-menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Process</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
            </ul>

            <!-- Copyright -->
            <div class="footer-copyright">
                Copyright © 2025
            </div>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<asset:javascript src="script.js"/>

</body>
</html>