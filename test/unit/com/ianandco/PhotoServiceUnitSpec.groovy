package com.ianandco

import grails.plugin.spock.UnitSpec


class PhotoServiceUnitSpec extends UnitSpec{

    def photoService

    def setup() {
        mockDomain Photo
        mockDomain Property
        photoService = new PhotoService()
    }


    def 'A photo can be added to a property'() {
        given:
            def property = new Property(id:1, title: 'Some property')
            mockDomain Property, [property]
        and:
            def fileName = 'some-file'

        when:
            def photoList = photoService.addPhotoTo(property, fileName)
        then:
            photoList[0].fileName == fileName
        and:
            property.photos*.id == photoList*.id

    }
}
