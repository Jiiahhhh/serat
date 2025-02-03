package com.ilal

import java.sql.Time
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
        def adminDetails = Admin.findByEmail("naruto@konoha.com")
                ?: new Admin(
                fullName: "Naruto Uzumaki",
                email: "naruto@konoha.com",
                profileImagePath: "no-image.png"
        ).save(failOnError: true)

        def customerDetails = Customer.findByEmail("ilal@gmail.com")
                ?: new Customer(
                fullName: "Muhammad Ijlal Nurhadi",
                email: "ilal@gmail.com",
                profileImagePath: "no-image.png"
        ).save(failOnError: true)

        Role.withTransaction {
            def userRole = Role.findByAuthority('ROLE_USER')
                    ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
            def adminRole = Role.findByAuthority('ROLE_ADMIN')
                    ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

            def user = User.findByUsername('user') ?: new User(
                    username: 'user',
                    password: 'password',
                    customer: customerDetails
            ).save(failOnError: true)

            def admin = User.findByUsername('admin') ?: new User(
                    username: 'admin',
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
    }

    def destroy = {
    }
}