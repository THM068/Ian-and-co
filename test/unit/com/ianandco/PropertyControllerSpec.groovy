package com.ianandco

import grails.plugin.spock.ControllerSpec
import grails.converters.JSON


class PropertyControllerSpec extends ControllerSpec {

    def 'Image can be uploaded'() {
        given: 'no photos in the database and a property'
            Property property = new Property(id: 2, title: 'Luveve property')
            mockDomain(Property, [property])
            mockDomain(Photo)

        and:'some params'
            controller.params.propertyId = 2
            controller.params.fileName = file

        when: 'upload is called'
            controller.upload()
        then:
            Photo photo = Photo.list().first()
            photo.fileName == file
        and:
            def jsonResults = JSON.parse(controller.response.contentAsString)
            jsonResults.success == true
            jsonResults.photos[0].id == 1
            jsonResults.photos[0].fileName == file

        where:
            file = 'file/name'
    }

    def 'An error message is displayed when a photo cannot be saved' () {
        given: 'no photos in the database and a property'
            mockDomain(Property)
            mockDomain(Photo)

        and:'some params'
            controller.params.propertyId = 2
            controller.params.fileName = file

        when: 'upload is called'
            controller.upload()
        then:
            def jsonResults = JSON.parse(controller.response.contentAsString)
            jsonResults.fail == true
            jsonResults.errorMessage == 'An error occured , the image was not saved to the database'

        where:
            file = 'file/name'
    }

    def 'An image can be deleted from the property'(){
        given:
            Property property = new Property(id: 3)
            Photo photo = new Photo(id: 1, property: property)
            property.photos = [photo]

            mockDomain Photo, [photo]
            mockDomain Property, [property]

        and:
            controller.params.photoId = 1

        when:
            controller.removePhoto()


        then:
            def updatedProperty = Property.list().first()
            updatedProperty.photos.size() == 0
        and:
            Photo.list().size() == 0
        and:
            controller.redirectArgs.action == 'edit'
        and:
            controller.redirectArgs.id == 3
    }

    def 'An error message is displayed when a photo that does not exist is deleted'() {
        given:
            mockDomain Photo
        and:
            controller.params.photoId = 3

        when:
            controller.removePhoto()

        then:
            controller.redirectArgs.action == 'list'

    }
}
