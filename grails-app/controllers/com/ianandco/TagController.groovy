package com.ianandco

import org.grails.taggable.Tag

class TagController {

    def create = {
        def tag = new Tag()
        [tagInstance: tag]
    }
}
