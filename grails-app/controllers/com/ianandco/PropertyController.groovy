package com.ianandco

import grails.converters.JSON

class PropertyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def upload = {
        def photos
        def property = Property.get(params.long('propertyId'))
        Photo photo = new Photo(fileName: params.fileName, property: property)
        if(photo.save()) {
            property.addToPhotos(photo)
            property.save()
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
