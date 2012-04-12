package com.ianandco

import grails.plugins.springsecurity.Secured

//@Secured(["hasRole('ROLE_ADMIN')"])
 @Secured(['IS_AUTHENTICATED_FULLY'])
class PhotoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [photoInstanceList: Photo.list(params), photoInstanceTotal: Photo.count()]
    }

    def create = {
        def photoInstance = new Photo()
        photoInstance.properties = params
        return [photoInstance: photoInstance]
    }

    def save = {
        def photoInstance = new Photo(params)
        if (photoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'photo.label', default: 'Photo'), photoInstance.id])}"
            redirect(action: "show", id: photoInstance.id)
        }
        else {
            render(view: "create", model: [photoInstance: photoInstance])
        }
    }

    def show = {
        def photoInstance = Photo.get(params.id)
        if (!photoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
            redirect(action: "list")
        }
        else {
            [photoInstance: photoInstance]
        }
    }

    def edit = {
        def photoInstance = Photo.get(params.id)
        if (!photoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [photoInstance: photoInstance]
        }
    }

    def update = {
        def photoInstance = Photo.get(params.id)
        if (photoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (photoInstance.version > version) {
                    
                    photoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'photo.label', default: 'Photo')] as Object[], "Another user has updated this Photo while you were editing")
                    render(view: "edit", model: [photoInstance: photoInstance])
                    return
                }
            }
            photoInstance.properties = params
            if (!photoInstance.hasErrors() && photoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'photo.label', default: 'Photo'), photoInstance.id])}"
                redirect(action: "show", id: photoInstance.id)
            }
            else {
                render(view: "edit", model: [photoInstance: photoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def photoInstance = Photo.get(params.id)
        if (photoInstance) {
            try {
                photoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'photo.label', default: 'Photo'), params.id])}"
            redirect(action: "list")
        }
    }
}
