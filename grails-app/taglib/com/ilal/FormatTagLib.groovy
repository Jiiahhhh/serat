package com.ilal


class FormatTagLib {
    static namespace = "custom"

    def shortNumber = {attrs, body ->
        Number number = attrs.value
        if (!number) return body()

        String formatted = number >= 1_000_000_000 ? String.format("%.1fB", number / 1_000_000_000.0) :
                number >= 1_000_000 ? String.format("%.1fM", number / 1_000_000.0) :
                        number >= 1_000 ? String.format("%.1fK", number / 1_000.0) :
                                number.toString()

        out << formatted
    }
}