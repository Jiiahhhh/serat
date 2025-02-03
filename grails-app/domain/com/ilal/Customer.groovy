package com.ilal

class Customer {
    String fullName
    String email
    String profileImagePath

    static constraints = {
        fullName maxSize: 255, nullable: false, unique: false
        email blank: false, unique: true, nullable: false
        profileImagePath maxSize: 500, nullable: true
    }
}
