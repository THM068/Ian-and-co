package com.ianandco

class Permalink {

    def convertToPermalink(title) {
        title = title.trim()
        def link = title.replaceAll(/ /, '-')
        link
    }
}
