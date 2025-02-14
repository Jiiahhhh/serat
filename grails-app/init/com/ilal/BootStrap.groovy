package com.ilal

import java.sql.Time
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
        def adminDetails = new Admin(
                fullName: "Naruto Uzumaki",
                profileImagePath: "no-image.png"
        ).save(failOnError: true)

        def customerDetails = new Customer(
                fullName: "Muhammad Ijlal Nurhadi",
                profileImagePath: "no-image.png"
        ).save(failOnError: true)

        Role.withTransaction {
            def userRole = Role.findByAuthority('ROLE_USER')
                    ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
            def adminRole = Role.findByAuthority('ROLE_ADMIN')
                    ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

            def user = User.findByUsername('user') ?: new User(
                    username: 'user@mail.com',
                    password: 'password',
                    customer: customerDetails
            ).save(failOnError: true)

            def admin = User.findByUsername('admin') ?: new User(
                    username: 'admin@mail.com',
                    password: 'password',
                    admin: adminDetails
            ).save(failOnError: true)

            if (!user.authorities.contains(userRole)) {
                UserRole.create(user, userRole, true)
            }
            if (!admin.authorities.contains(adminRole)) {
                UserRole.create(admin, adminRole, true)
            }
        }

        if (Book.count() == 0) {
            Book.withTransaction {status ->
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
                new Book(
                        title: "Garis Waktu",
                        author: "Fiersa Besari",
                        releaseDate: sdf.parse("2016-07-01"), // FIXED!
                        rating: 4.2,
                        votes: 543210,
                        readers: 3456789,
                        cover: "/book_cover/garis_waktu.jpg",
                        synopsis: "SA journey through time, telling a story about emotions, separation, and how time heals everything.",
                        tags: ["Biography", "Memoir"],
                        publisher: "Media Kita",
                        language: "Indonesian",
                        genre: "Fiction / Romance",
                        pages: 210,
                        readLink: "https://example.com/read/garis-waktu",
                        downloadLink: "https://example.com/download/garis-waktu"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "All The Light We Cannot See",
                        author: "Anthony Doerr",
                        releaseDate: sdf.parse("2014-05-06"),
                        rating: 3.8,
                        votes: 198765,
                        readers: 2345678,
                        cover: "/book_cover/all_the_light.jpg",
                        synopsis: "A blind French girl and a German soldier find their fates intertwined through an old radio during World War II.",
                        tags: ["Historical", "Fiction"],
                        publisher: "Scribner",
                        language: "English",
                        genre: "Historical / Fiction",
                        pages: 530,
                        readLink: "https://example.com/read/all-the-light",
                        downloadLink: "https://example.com/download/all-the-light"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Rich People Problems",
                        author: "Kevin Kwan",
                        releaseDate: sdf.parse("2017-05-23"), // FIXED!
                        rating: 4.5,
                        votes: 765432,
                        readers: 4123456,
                        cover: "/book_cover/rich_people_problems.jpg",
                        synopsis: "Scandals and drama in a billionaire Asian family, filled with inheritance battles and extravagant lifestyles.",
                        tags: ["Fiction", "Comedy", "Drama"],
                        publisher: "Doubleday",
                        language: "English",
                        genre: "Fiction / Humor",
                        pages: 416,
                        readLink: "https://example.com/read/rich-people-problems",
                        downloadLink: "https://example.com/download/rich-people-problems"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Where the Crawdads Sing",
                        author: "Delia Owens",
                        releaseDate: sdf.parse("2018-08-14"), // FIXED!
                        rating: 4.0,
                        votes: 654321,
                        readers: 1987654,
                        cover: "/book_cover/where_the_crawdads_sing.jpg",
                        synopsis: "The mystery of a girl raised alone in a swamp who becomes the suspect in a murder case shaking her small town.",
                        tags: ["Mystery", "Thriller", "Drama"],
                        publisher: "G.P. Putnam's Sons",
                        language: "English",
                        genre: "Mystery / Thriller",
                        pages: 384,
                        readLink: "https://example.com/read/where-the-crawdads-sing",
                        downloadLink: "https://example.com/download/where-the-crawdads-sing"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Crazy Rich Asians",
                        author: "Kevin Kwan",
                        releaseDate: sdf.parse("2013-06-11"), // FIXED!
                        rating: 3.9,
                        votes: 432198,
                        readers: 2765432,
                        cover: "/book_cover/crazy_rich_asians.jpg",
                        synopsis: "A woman falls in love with a man from an ultra-rich Asian family and must navigate the challenges that come with it.",
                        tags: ["Fiction", "Romance", "Comedy"],
                        publisher: "Doubleday",
                        language: "English",
                        genre: "Fiction / Romance / Comedy",
                        pages: 416,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "The Night Circus",
                        author: "Erin Morgenstern",
                        releaseDate: sdf.parse("2013-06-11"), // FIXED!
                        rating: 4.7,
                        votes: 876543,
                        readers: 3210987,
                        cover: "/book_cover/the_night_circus.jpg",
                        synopsis: "Two young magicians are trapped in a mystical competition inside a circus that only appears at night.",
                        tags: ["Fantasy", "Romance"],
                        publisher: "Doubleday",
                        language: "English",
                        genre: "Fantasy",
                        pages: 387,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Atomic Habits",
                        author: "James Clear",
                        releaseDate: sdf.parse("2018-10-16"), // FIXED!
                        rating: 4.1,
                        votes: 123987,
                        readers: 4987654,
                        cover: "/book_cover/atomic_habits.jpg",
                        synopsis: "A scientific guide on how small habit changes can lead to significant life improvements.",
                        tags: ["Self-Help", "Psychology"],
                        publisher: "Avery",
                        language: "English",
                        genre: "Non-fiction / Self-Improvement",
                        pages: 320,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Sapiens: A Brief History of Humankind",
                        author: "Yuval Noah Harari",
                        releaseDate: sdf.parse("2011-09-04"), // FIXED!
                        rating: 3.5,
                        votes: 345678,
                        readers: 1876543,
                        cover: "/book_cover/sapiens.jpg",
                        synopsis: "A book exploring human history from ancient times to the modern era in an engaging and insightful way.",
                        tags: ["History", "Philosophy"],
                        publisher: "Harper",
                        language: "English",
                        genre: "Non-fiction / History",
                        pages: 512,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "The Silent Patient",
                        author: "Alex Michaelides",
                        releaseDate: sdf.parse("2019-02-05"), // FIXED!
                        rating: 4.3,
                        votes: 654987,
                        readers: 2345876,
                        cover: "/book_cover/the_silent_patient.jpg",
                        synopsis: "A psychological thriller about a woman who kills her husband and then chooses to remain silent forever.",
                        tags: ["Mystery", "Thriller"],
                        publisher: "Celadon Books",
                        language: "English",
                        genre: "Thriller / Psychology",
                        pages: 336,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "The Alchemist",
                        author: "Paulo Coelho",
                        releaseDate: sdf.parse("1988-04-15"), // FIXED!
                        rating: 4.8,
                        votes: 987654,
                        readers: 4765321,
                        cover: "/book_cover/the_alchemist.jpg",
                        synopsis: "A young shepherd embarks on a journey in search of treasure but finds life wisdom along the way.",
                        tags: ["Adventure", "Philosophy"],
                        publisher: "HarperCollins",
                        language: "English",
                        genre: "Fiction / Spiritual",
                        pages: 208,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Dune",
                        author: "Frank Herbert",
                        releaseDate: sdf.parse("1965-08-01"), // FIXED!
                        rating: 3.6,
                        votes: 234567,
                        readers: 3210654,
                        cover: "/book_cover/dune.jpg",
                        synopsis: "An epic sci-fi story about politics, power, and war on a desert planet rich in the universe's most valuable resource.",
                        tags: ["Sci-Fi", "Adventure"],
                        publisher: "Chilton Books",
                        language: "English",
                        genre: "Science Fiction",
                        pages: 412,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "1984",
                        author: "George Orwell",
                        releaseDate: sdf.parse("1949-06-08"), // FIXED!
                        rating: 4.4,
                        votes: 789432,
                        readers: 1543876,
                        cover: "/book_cover/1984.jpg",
                        synopsis: "A dystopian world controlled by a totalitarian government that monitors every move of its citizens.",
                        tags: ["Dystopia", "Politics"],
                        publisher: "Secker & Warburg",
                        language: "English",
                        genre: "Fiction / Political",
                        pages: 328,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "The Midnight Library",
                        author: "Matt Haig",
                        releaseDate: sdf.parse("2020-08-13"), // FIXED!
                        rating: 4.0,
                        votes: 567321,
                        readers: 2987654,
                        cover: "/book_cover/the_midnight_library.jpg",
                        synopsis: "A magical library that allows a person to explore the different lives they could have lived if they made different choices.",
                        tags: ["Fantasy", "Philosophy"],
                        publisher: "Canongate Books",
                        language: "English",
                        genre: "Fantasy",
                        pages: 288,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Project Hail Mary",
                        author: "Andy Weir",
                        releaseDate: sdf.parse("2021-05-04"), // FIXED!
                        rating: 3.7,
                        votes: 432876,
                        readers: 4321987,
                        cover: "/book_cover/project_hail_mary.jpg",
                        synopsis: "A space adventure where a scientist must save humanity without remembering his mission.",
                        tags: ["Sci-Fi", "Adventure"],
                        publisher: "Ballantine Books",
                        language: "English",
                        genre: "Science Fiction",
                        pages: 476,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "The Seven Husbands of Evelyn Hugo",
                        author: "Taylor Jenkins Reid",
                        releaseDate: sdf.parse("2017-06-13"), // FIXED!
                        rating: 4.9,
                        votes: 987321,
                        readers: 1234567,
                        cover: "/book_cover/the_seven_husbands_of_evelyn_hugo.jpg",
                        synopsis: "A legendary Hollywood actress reveals the secrets of her life in an exclusive interview.",
                        tags: ["Drama", "Romance"],
                        publisher: "Atria Books",
                        language: "English",
                        genre: "Fiction, Drama",
                        pages: 400,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)
            }
        }
    }

    def destroy = {
    }
}