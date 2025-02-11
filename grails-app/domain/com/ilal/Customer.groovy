package com.ilal

class Customer {
    String fullName
    String profileImagePath

    static constraints = {
        fullName maxSize: 255, nullable: false, unique: false
        profileImagePath maxSize: 500, nullable: true
    }
}
