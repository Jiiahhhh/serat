package com.ilal

class Book {
    String title
    String author
    Date releaseDate
    Double rating
    Integer votes
    Integer readers
    String cover
    String synopsis
    List<String> tags = []
    String publisher
    String language
    String genre
    Integer pages
    String readLink
    String downloadLink

    static constraints = {
        title nullable: false, blank: false
        author nullable: false, blank: false
        releaseDate nullable: false
        rating nullable: false, min: 0.0 as Double, max: 5.0 as Double
        votes nullable: false, min: 0
        readers nullable: true, min: 0
        cover nullable: false
        synopsis nullable: false, maxSize: 5000
        tags nullable: true
        publisher nullable: false, blank: false
        language nullable: false, blank: false
        genre nullable: false, blank: false
        pages nullable: false, min: 1
        readLink nullable: true, url: true
        downloadLink nullable: true, url: true
    }

    static mapping = {
        synopsis type: "text"
    }
}
