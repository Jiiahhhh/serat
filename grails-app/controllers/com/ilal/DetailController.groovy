package com.ilal

import java.time.ZoneId
import java.time.format.DateTimeFormatter

class DetailController {

    def index(Long id) {
        if (!id) {
            flash.message = "Invalid request: Book ID is missing!"
            redirect(action: 'list')
            return
        }

        Book book = Book.get(id)
        if (!book) {
            flash.message = "Book not found!"
            redirect(action: "list")
            return
        }

        String formattedReleaseDate = book.releaseDate.toInstant()
                .atZone(ZoneId.systemDefault())
                .toLocalDate()
                .format(DateTimeFormatter.ofPattern("dd MMM yyyy"))

        List<Book> recommendedBooks = Book.findAllByIdNotEqual(id, [max: 5])
        render(view: 'index', model: [book: book, formattedReleaseDate: formattedReleaseDate, recommendedBooks: recommendedBooks])
    }

    def detail() {}
}