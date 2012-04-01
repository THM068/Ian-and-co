package com.ianandco

class HomeController {

    def index = {
        def newListing = Property.newListings.list()
        def editorChoice = Property.findByActiveAndEditorChoice(true,true)

        [ newListing: newListing, editorChoice: editorChoice ]
    }

    def contactUs = {}

    def aboutUs = {}
}
