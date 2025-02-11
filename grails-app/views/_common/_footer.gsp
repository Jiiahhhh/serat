<asset:stylesheet src="styles.css"/>
<footer class="site-footer">
    <div class="container">
        <div class="footer-content">
            <!-- Logo -->
            <div class="footer-logo">
                <img src="${createLink(controller: 'image', action: 'showImage',
                        params: [fileName: '/brand_logo_white.svg'])}">
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