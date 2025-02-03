package com.ilal

class Admin {
    String fullName
    String email
    String profileImagePath

    static constraints = {
        fullName maxSize: 255, nullable: false, unique: true
        email blank: false, unique: true, nullable: false
        profileImagePath maxSize: 500, nullable: true
    }
}
