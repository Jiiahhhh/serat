$(document).ready(function () {
    // Avatar selection
    $(".avatar-btn").on("click", function () {
        var selectedAvatar = $(this).find("img").attr("src");
        $("#profileImage").attr("src", selectedAvatar);
        $(".avatar-btn").removeClass("selected");
        $(this).addClass("selected");
    });

    // Image upload (optional)
    $("#imageOverlay button").on("click", function () {
        alert("Image upload functionality to be implemented.");
    });
});
