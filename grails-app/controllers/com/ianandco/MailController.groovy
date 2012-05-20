package com.ianandco

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class MailController {
    def sendMailService
    def emailValidatorService

    def sendEnquiry = {
        def email = params.email
        def telephone = params.telephone
        def message = params.message
        def name = params.name
        def property = Property.get(params.long('pId'))

        def config = ConfigurationHolder.config
        def recipient = config.grails.ianandco.email

        def map = [email: email, telephone: telephone, message: message, name: name, property: property]
        def isSyntaxValid = emailValidatorService.check(email).syntaxValid

        if (isSyntaxValid && email) {
            sendMailService.sendEnquiryEmail(recipient,map)
            flash.message = 'email.sent.success'
        }
        else {
            flash.error = 'email.sent.error'
        }
        if(params.pId) {
            println params.id
            println property?.id
            redirect(controller: 'home', action: 'propertyDetails',params: [id: property.id])
        }
        else {
            redirect(controller: 'home', action: 'contactUs')
        }
    }
}
