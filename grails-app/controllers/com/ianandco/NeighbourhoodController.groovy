package com.ianandco

import org.grails.taggable.Tag

class NeighbourhoodController {

    def create = {
        def tag = new Neighbourhood()
        [ NeighbourhoodInstance: tag ]
    }


}
