package com.ilal

import java.sql.Time

class Review {
    User user
    Book book
    Integer rating
    String reviewText
    Time createdAt
//    Boolean isFlagged

    static constraints = {
        user nullable: false
        book nullable: false
        rating min: 0, nullable: true
        reviewText nullable: true, maxSize: 1000
        createdAt nullable: true
    }
}
