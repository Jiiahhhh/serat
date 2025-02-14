package com.ilal

import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured


class LoginController {

    SpringSecurityService springSecurityService

    @Secured('permitAll')
    def index() {
        if (springSecurityService.isLoggedIn()) {
            redirectBasedOnRole()
            return
        }

        if (params.error) {
            flash.message = "Invalid email or password. Please try again"
        }
        render(view: 'index')

    }

    private void redirectBasedOnRole(){
        def authorities = springSecurityService.authentication.authorities*.authority
        if ('ROLE_ADMIN' in authorities) {
            redirect(controller: 'home', action: 'index')
        } else if ('ROLE_USER' in authorities) {
            redirect(controller: 'home', action: 'index')
        }
    }
}