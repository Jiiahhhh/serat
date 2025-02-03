package com.ilal

class Book {
    String title
    String author
    String category
    String description
    String coverImage
    String fileUrl
    Date createdAt

    static constraints = {
        title nullable: false, maxSize: 255
        author nullable: false, maxSize: 255
        category maxSize: 100, nullable: true
        description maxSize: 2000, nullable: true
        coverImage maxSize: 500, nullable: true
        fileUrl maxSize: 500, nullable: true
        createdAt nullable: true
    }
}
