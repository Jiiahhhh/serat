$(document).ready(function () {
    $(".toggle-password").click(function () {
        let passwordField = $("#password");
        let icon = $(this).find("i");

        if (passwordField.attr("type") === "password") {
            passwordField.attr("type", "text");
            icon.removeClass("bi-eye").addClass("bi-eye-slash");
        } else {
            passwordField.attr("type", "password");
            icon.removeClass("bi-eye-slash").addClass("bi-eye");
        }
    })
})