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
                        rating: 4.5,
                        votes: 9800,
                        readers: 3700000,
                        cover: "/book_cover/garis_waktu.jpg",
                        synopsis: "Sebuah perjalanan menghapus luka...",
                        tags: ["Biografi", "AutoBiografi", "Memoar"],
                        publisher: "Media Kita",
                        language: "Indonesia",
                        genre: "Fiksi / Romansa / Umum",
                        pages: 210,
                        readLink: "https://example.com/read/garis-waktu",
                        downloadLink: "https://example.com/download/garis-waktu"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "All The Light We Cannot See",
                        author: "Anthony Doerr",
                        releaseDate: sdf.parse("2014-05-06"),
                        rating: 4.7,
                        votes: 1988288,
                        readers: 2500000,
                        cover: "/book_cover/all_the_light.jpg",
                        synopsis: "Seorang gadis buta bertemu seorang prajurit...",
                        tags: ["Historical", "Fiction"],
                        publisher: "Scribner",
                        language: "English",
                        genre: "Historical Fiction",
                        pages: 530,
                        readLink: "https://example.com/read/all-the-light",
                        downloadLink: "https://example.com/download/all-the-light"
                ).save(flush: true, failOnError: true)

                new Book(
                        title: "Rich People Problems",
                        author: "Kevin Kwan",
                        releaseDate: sdf.parse("2017-05-23"), // FIXED!
                        rating: 4.3,
                        votes: 100500,
                        readers: 1800000,
                        cover: "/book_cover/rich_people_problems.jpg",
                        synopsis: "Drama keluarga miliarder Asia yang penuh intrik...",
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
                        rating: 4.6,
                        votes: 2100000,
                        readers: 2200000,
                        cover: "/book_cover/where_the_crawdads_sing.jpg",
                        synopsis: "Seorang gadis liar yang tumbuh di rawa...",
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
                        rating: 4.2,
                        votes: 250000,
                        readers: 1500000,
                        cover: "/book_cover/crazy_rich_asians.jpg",
                        synopsis: "Gaya hidup mewah orang-orang kaya di Asia...",
                        tags: ["Fiction", "Romance", "Comedy"],
                        publisher: "Doubleday",
                        language: "English",
                        genre: "Fiction / Romance / Comedy",
                        pages: 416,
                        readLink: "https://example.com/read/crazy-rich-asians",
                        downloadLink: "https://example.com/download/crazy-rich-asians"
                ).save(flush: true, failOnError: true)
            }
        }
    }

    def destroy = {
    }
}