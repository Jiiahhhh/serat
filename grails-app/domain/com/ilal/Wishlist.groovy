package com.ilal

class Wishlist {
    User user
    Book book
    Date createdAt

    static constraints = {
        user nullable: false
        book nullable: false
        createdAt nullable: false
    }
}
