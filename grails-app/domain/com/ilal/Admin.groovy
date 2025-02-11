package com.ilal

class Admin {
    String fullName
    String profileImagePath

    static constraints = {
        fullName maxSize: 255, nullable: false, unique: true
        profileImagePath maxSize: 500, nullable: true
    }
}
