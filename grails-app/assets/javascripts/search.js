$(document).ready(function () {
    function filterBooks() {
        let selectedCategories = [];
        let selectedLanguages = [];
        let selectedRating = $(".star.selected").length;
        let yearMin = $("#yearMinInput").val();
        let yearMax = $("#yearMaxInput").val();

        $("input[id^='category']:checked").each(function () {
            selectedCategories.push($(this).next().text().trim());
        });

        $("input[id^='language']:checked").each(function () {
            selectedLanguages.push($(this).next().text().trim());
        });

        $.ajax({
            url: "/books/filter",
            method: "GET",
            data: {
                categories: selectedCategories.join(","),
                languages: selectedLanguages.join(","),
                yearMin: yearMin,
                yearMax: yearMax,
                rating: selectedRating
            },
            success: function (data) {
                $("#bookResults").html(data);
            },
            error: function () {
                console.error("Error fetching filtered books.");
            }
        });
    }

    // Inisialisasi Range Slider dengan dua handle
    $("#yearRangeSlider").slider({
        range: true,
        min: 1900,
        max: 2025,
        values: [1900, 2025], // Nilai default awal
        slide: function (event, ui) {
            $("#yearMin").text(ui.values[0]);
            $("#yearMax").text(ui.values[1]);
            $("#yearMinInput").val(ui.values[0]);
            $("#yearMaxInput").val(ui.values[1]);
        },
        stop: function () {
            filterBooks(); // Update filter setelah user selesai memilih range
        }
    });

    // Event listener untuk filter
    $(".form-check-input").on("change", filterBooks);

    // Event listener untuk rating bintang
    $(".star").on("click", function () {
        $(".star").removeClass("selected");
        $(this).addClass("selected").prevAll().addClass("selected");
        filterBooks();
    });

    // Panggil filter pertama kali setelah slider inisialisasi
    setTimeout(filterBooks, 500);
});
