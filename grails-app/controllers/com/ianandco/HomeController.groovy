package com.ianandco

class HomeController {
    def propertyService

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

    def commercialProperties = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def comProperties = Property.findAllByActiveAndPropertyType(true,'Commercial',params)
        def comPropertiesCount = Property.countByActiveAndPropertyType(true,'Commercial',params)

        [propertyInstanceList: comProperties, propertyInstanceTotal: comPropertiesCount]

    }

    def locationProperties = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def properties = []
        def propertiesCount = 0
        def location = params.location

        if(!location) {
            properties = Property.findAllByActive(true,params)
            propertiesCount = Property.countByActive(true)
        }
        else {
            properties = Property.findAllByLocationAndActive(location, true, params)
            propertiesCount = Property.countByLocationAndActive(location,true)
        }

        [propertyInstanceList: properties, propertyInstanceTotal: propertiesCount, location: location]
    }

    def propertyDetails = {
        def property = Property.get(params.long('id'))
        if(property) {
            propertyService.recordVisit(property)
            return [propertyInstance : property]
        }
        else {
            response.sendError(404)
        }

    }
}
