package com.ilal

import java.sql.Time

class Download {
    User user
    Book book
    Time download_time

    static constraints = {
        user nullable: false
        book nullable: false
        download_time nullable: false
    }
}