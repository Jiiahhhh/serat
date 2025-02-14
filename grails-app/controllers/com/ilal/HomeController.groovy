package com.ilal

class HomeController {

    def index() {
        List<Book> randomBooks = Book.list().sort {Math.random() }.take(3)
        List<Book> bestSellerBooks = Book.list(sort: "readers", order: "desc", max: 4)
        render(view: 'index', model: [randomBooks: randomBooks, bestSellerBooks: bestSellerBooks])
    }
}