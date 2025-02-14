<%@ page import="com.ilal.User" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet src="profile.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Profile</title>
</head>

<body>
<div class="container py-5">
    <div class="row">
        <!-- Profile Section (3 Columns) -->
        <div class="col-lg-3 profile-section">
            <div class="profile-card">
                <div class="profile-image">
%{--                    <img src="${userProfile.profileImagePath ?: '/non-image.png'}" alt="Profile Picture">--}%
                    <img src="${createLink(controller: 'image', action: 'showImage',
                            params: userProfile.profileImagePath)}">
                    <a href="${createLink(controller: 'profile', action: 'edit')}">
                        <div class="edit-icon">
                            <i class="fas fa-pencil-alt"></i>
                        </div>
                    </a>
                </div>
                <h3 class="profile-name">${userProfile.fullName}</h3>
                <p class="profile-email">${user.username}</p>

                <h5 class="bio-title">Biography</h5>
                <p>No biography available</p>
%{--                <p class="bio-text">${userProfile.biography ?: 'No biography available.'}</p>--}%

                <h5 class="preference-title">Preference</h5>
                <div class="preference-tags">
                    <span class="badge bg-secondary">Fiction</span>
%{--                    <g:each var="tag" in="${userProfile.preferences}">--}%
%{--                        <span class="badge bg-secondary">${tag}</span>--}%
%{--                    </g:each>--}%
                </div>
            </div>
        </div>

        <!-- Favorite Section (9 Columns) -->
        <div class="col-lg-9">
            <div class="favorites-section">
                <!-- Favorite Books -->
                <div class="favorites-header">
                    <h4>Favorites Book</h4>
                    <a href="#" class="see-more">See more</a>
                </div>
                <div class="row">
%{--                    <g:each var="book" in="${userProfile.favoriteBooks}">--}%
%{--                        <div class="col-md-4">--}%
%{--                            <div class="book-card">--}%
%{--                                <a href="${createLink(controller: 'detail', action: 'index', id: book.id)}">--}%
%{--                                    <img src="${book.cover}" class="book-cover">--}%
%{--                                </a>--}%
%{--                                <p class="book-title">${book.title}</p>--}%
%{--                                <p class="book-author">${book.author}</p>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </g:each>--}%
                </div>

                <!-- Favorite Authors -->
                <div class="favorites-header">
                    <h4>Favorites Author</h4>
                    <a href="#" class="see-more">See more</a>
                </div>
                <div class="row">
%{--                    <g:each var="author" in="${userProfile.favoriteAuthors}">--}%
%{--                        <div class="col-md-2">--}%
%{--                            <div class="author-card">--}%
%{--                                <div class="author-avatar"></div>--}%
%{--                                <p class="author-name">${author}</p>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </g:each>--}%
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>