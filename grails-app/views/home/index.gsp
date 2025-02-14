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
<g:render template="/_common/navbar"/>
<g:render template="/home/shared/hero"/>
<g:render template="/home/shared/bestseller"/>
<g:render template="/home/shared/onlinebookfairs"/>
<g:render template="/home/shared/categories"/>
<g:render template="/_common/footer"/>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>