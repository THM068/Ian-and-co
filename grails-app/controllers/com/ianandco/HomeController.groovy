package com.ianandco

class HomeController {

    def index = {
        def newListing = Property.newListings.list()
        def editorChoice = Property.findByActiveAndEditorChoice(true,true)

        [ newListing: newListing, editorChoice: editorChoice ]
    }

    def contactUs = {}

    def aboutUs = {}

    def residentialProperties = {

        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def resProperties = Property.findAllByActiveAndPropertyType(true,'Residential',params)
        def resPropertiesCount = Property.countByActiveAndPropertyType(true,'Residential',params)

        [propertyInstanceList: resProperties, propertyInstanceTotal: resPropertiesCount]

    }
}
