package com.ilal

import grails.plugin.springsecurity.SpringSecurityService


class ProfileController {

    // Inject the springSecurityService
    SpringSecurityService springSecurityService

    def index() {
        def user = springSecurityService.getCurrentUser()  // Correct way to access currentUser in some configurations

        // Check if user is not authenticated
        if (!user) {
            flash.message = "User not found!"
            redirect(controller: 'home', action: 'index')
            return
        }

        // Get either the Admin or Customer profile
        Admin admin = user.admin
        Customer customer = user.customer
        def userProfile = admin ?: customer

        // If no profile is found, redirect to the home page
        if (!userProfile) {
            flash.message = "No profile found for the user"
            redirect(controller: "home", action: 'index')
            return
        }

        // Render the profile page with user data
        render(view: 'index', model: [user: user, userProfile: userProfile])
    }

    def edit() {
        def user = springSecurityService.getCurrentUser() // Correct method to access user data
        def userProfile = user.admin ?: user.customer
        render(view: "index", model: [userProfile: userProfile])
    }
}