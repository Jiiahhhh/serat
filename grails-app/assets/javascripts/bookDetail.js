$(document).ready(function () {
    // Highlight book tags on hover
    $(".badge").hover(
        function () {
            $(this).addClass("bg-dark text-white");
        },
        function () {
            $(this).removeClass("bg-dark text-white");
        }
    );

    // Redirect to book reading page when "Read Book" is clicked
    $(".btn-dark").click(function (e) {
        if ($(this).text() === "Read Book") {
            e.preventDefault();
            window.location.href = $(this).attr("href");
        }
    });

    // Expand synopsis if it's too long
    $(".book-synopsis").each(function () {
        if ($(this).text().length > 300) {
            $(this).append('<span class="text-primary">... Read More</span>');
        }
    });
});
