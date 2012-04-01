package com.ianandco

class TigerBoxController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tigerBoxInstanceList: TigerBox.list(params), tigerBoxInstanceTotal: TigerBox.count()]
    }

    def create = {
        def tigerBoxInstance = new TigerBox()
        tigerBoxInstance.properties = params
        return [tigerBoxInstance: tigerBoxInstance]
    }

    def save = {
        def tigerBoxInstance = new TigerBox(params)
        if (tigerBoxInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), tigerBoxInstance.id])}"
            redirect(action: "show", id: tigerBoxInstance.id)
        }
        else {
            render(view: "create", model: [tigerBoxInstance: tigerBoxInstance])
        }
    }

    def show = {
        def tigerBoxInstance = TigerBox.get(params.id)
        if (!tigerBoxInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
            redirect(action: "list")
        }
        else {
            [tigerBoxInstance: tigerBoxInstance]
        }
    }

    def edit = {
        def tigerBoxInstance = TigerBox.get(params.id)
        if (!tigerBoxInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [tigerBoxInstance: tigerBoxInstance]
        }
    }

    def update = {
        def tigerBoxInstance = TigerBox.get(params.id)
        if (tigerBoxInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (tigerBoxInstance.version > version) {
                    
                    tigerBoxInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tigerBox.label', default: 'TigerBox')] as Object[], "Another user has updated this TigerBox while you were editing")
                    render(view: "edit", model: [tigerBoxInstance: tigerBoxInstance])
                    return
                }
            }
            tigerBoxInstance.properties = params
            if (!tigerBoxInstance.hasErrors() && tigerBoxInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), tigerBoxInstance.id])}"
                redirect(action: "show", id: tigerBoxInstance.id)
            }
            else {
                render(view: "edit", model: [tigerBoxInstance: tigerBoxInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def tigerBoxInstance = TigerBox.get(params.id)
        if (tigerBoxInstance) {
            try {
                tigerBoxInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tigerBox.label', default: 'TigerBox'), params.id])}"
            redirect(action: "list")
        }
    }
}
