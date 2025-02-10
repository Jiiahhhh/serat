package com.ilal

class ImageController {

    def showImage(String fileName) {
        File imageFile = new File("images/" + fileName)

        if (imageFile.exists()) {
            // Tentukan contentType berdasarkan ekstensi file
            def extension = fileName.tokenize('.').last().toLowerCase()
            switch (extension) {
                case 'png':
                    response.contentType = "image/png"
                    break
                case 'jpg':
                case 'jpeg':
                    response.contentType = "image/jpeg"
                    break
                case 'svg':
                    response.contentType = "image/svg+xml"
                    break
                default:
                    render(status: 415, text: "Unsupported file type")
                    return
            }

            response.outputStream << imageFile.bytes
            response.outputStream.flush()
        } else {
            render(status: 404, text: "File not found")
        }
    }
}
