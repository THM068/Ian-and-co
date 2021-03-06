package com.ianandco

import grails.converters.JSON

class PropertyController {
    def propertyService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def upload = {
        def photos
        def property = Property.get(params.long('propertyId'))
        Photo photo = new Photo(fileName: params.fileName)
        if(property?.addToPhotos(photo)?.save()) {
            photo.save()
            photos = property.photos.collect { p ->
                [id: p.id, fileName: p.fileName ]
            }
            render([success: true, photos: photos] as JSON)
            return
        }
        else {
            render( [fail: true, errorMessage: 'An error occured , the image was not saved to the database'] as JSON )
        }
    }

    def sortPhotos = {
        def photoIds =  params.'item[]'
        def photos = photoIds.collect { Photo.get(it) }
        def property = photos[0].property
        if(property.photos.id != photos.id ) {
            property.photos = photos
            property.save()
        }
        render ([success: true] as JSON )
    }

    def removePhoto = {
        def photo = Photo.get(params.long('photoId'))
        if(photo){
            def property = photo.property
            property.removeFromPhotos(photo)
            property.save()

            photo.delete(failOnError: true)
            redirect(action: 'edit', id: property.id)
            return
        }
        else {
            redirect(action: 'list')
        }
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [propertyInstanceList: Property.list(params), propertyInstanceTotal: Property.count()]
    }

    def create = {
        def propertyInstance = new Property()
        propertyInstance.properties = params
        return [propertyInstance: propertyInstance]
    }

    def save = {
        def propertyInstance = new Property(params)
        if (propertyInstance.save(flush: true)) {
            if(params.editorChoice) {
                propertyService.editorsChoice(propertyInstance)
            }
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'property.label', default: 'Property'), propertyInstance.id])}"
            redirect(action: "show", id: propertyInstance.id)
        }
        else {
            render(view: "create", model: [propertyInstance: propertyInstance])
        }
    }

    def show = {
        def propertyInstance = Property.get(params.id)
        if (!propertyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
            redirect(action: "list")
        }
        else {
            [propertyInstance: propertyInstance]
        }
    }

    def edit = {
        def propertyInstance = Property.get(params.id)
        if (!propertyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [propertyInstance: propertyInstance]
        }
    }

    def update = {
        def propertyInstance = Property.get(params.id)
        if (propertyInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (propertyInstance.version > version) {
                    
                    propertyInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'property.label', default: 'Property')] as Object[], "Another user has updated this Property while you were editing")
                    render(view: "edit", model: [propertyInstance: propertyInstance])
                    return
                }
            }
            propertyInstance.properties = params
            if (!propertyInstance.hasErrors() && propertyInstance.save(flush: true)) {
                if(params.editorChoice) {
                    propertyService.editorsChoice(propertyInstance)
                }
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'property.label', default: 'Property'), propertyInstance.id])}"
                redirect(action: "show", id: propertyInstance.id)
            }
            else {
                render(view: "edit", model: [propertyInstance: propertyInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def propertyInstance = Property.get(params.id)
        if (propertyInstance) {
            try {
                propertyInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'property.label', default: 'Property'), params.id])}"
            redirect(action: "list")
        }
    }
}
