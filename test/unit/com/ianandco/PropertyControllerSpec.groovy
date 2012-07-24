package com.ianandco

import grails.plugin.spock.ControllerSpec
import grails.converters.JSON


class PropertyControllerSpec extends ControllerSpec {

    def photoService
    def setup() {
        photoService = Mock(PhotoService)
        controller.photoService = photoService

    }

    def 'Image can be uploaded'() {
        given: 'no photos in the database and a property'
            Property property = new Property(id: 2, title: 'Luveve property')
            mockDomain(Property, [property])
            mockDomain(Photo)

        and:'some params'
            controller.params.propertyId = 2
            controller.params.fileName = 'some-mulitiparty-file'
        and:
            def photo = new Photo(id: 1, fileName: s3FileName, property: property)

        when: 'upload is called'
            controller.upload()
        then:
            1 * photoService.uploadPhoto(_, property) >> s3FileName
        and:
            1 * photoService.addPhotoTo(property, s3FileName)  >> [photo]
        and:
            def jsonResults = JSON.parse(controller.response.contentAsString)
            jsonResults.success == true
            jsonResults.photos[0].id == 1
            jsonResults.photos[0].fileName == s3FileName

        where:
            s3FileName = 'amazon-s3-filename'
    }

    def 'An error message is displayed when a photo cannot be saved' () {
        given: 'no photos in the database and a property'
            Property property = new Property(id: 2, title: 'Luveve property')
            mockDomain(Property, [property])
            mockDomain(Photo)

        and:'some params'
            controller.params.propertyId = 2
            controller.params.fileName = 'some-mulitiparty-file'

        when: 'upload is called'
            controller.upload()
        then:
            1 * photoService.uploadPhoto(_,property) >> { throw new UploadErrorException() }
        and:
            def jsonResults = JSON.parse(controller.response.contentAsString)
            jsonResults.fail == true
            jsonResults.errorMessage == 'An error occured , the image was not saved to the database'
    }
}
