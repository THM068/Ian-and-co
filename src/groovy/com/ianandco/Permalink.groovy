package com.ianandco

class Permalink {

    def convertToPermalink(title) {
        def link = title.replaceAll(/ /, '-')
        link
    }
}
