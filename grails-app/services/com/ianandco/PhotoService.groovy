package com.ianandco

class PhotoService {


    static transactional = true


    def uploadPhoto(multipartFile, property) {
        String folder = "property/photos/property-${property.id}"
        def fileName = multipartFile.originalFilename
        if(!fileName) {
            throw new UploadErrorException()
        }
        def uploadedFile = multipartFile.inputStream.s3upload(fileName) {
            path folder
       }

        if(uploadedFile) {
            def fileUrl = "http://static.ianandco.com.s3.amazonaws.com/${folder}/${fileName}"
            return fileUrl
        }
        else {
            throw new UploadErrorException()
        }
    }

    def addPhotoTo(property, s3FileName) {
        def photo = new Photo(fileName: s3FileName, property: property)
        property.addToPhotos(photo).save()
        println property.photos
        def photos = property.photos.collect { p ->
                [id: p.id, fileName: p.fileName ]
        }
        return photos

    }


}
