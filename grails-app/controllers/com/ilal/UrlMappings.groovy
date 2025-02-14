package com.ilal

class UrlMappings {
    static mappings = {
        "/detail/$id"(controller: 'detail', action: 'index')
//        "/profile/$id"(controller: 'profile', action: 'index')
        "/"(controller: 'home', action: 'index')
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/search"(view:"/search/index")
        "/login"(view:"/login/index")
        "/register"(view:"/register/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
