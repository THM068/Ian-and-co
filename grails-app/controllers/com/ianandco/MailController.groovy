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

        def config = ConfigurationHolder.config
        def recipient = config.grails.ianandco.email

        def map = [email: email, telephone: telephone, message: message, name: name]
        def isSyntaxValid = emailValidatorService.check(email).syntaxValid

        if (isSyntaxValid && email) {
            sendMailService.sendEnquiryEmail(recipient,map)
            flash.message = 'email.sent.success'
        }
        else {
            flash.error = 'email.sent.error'
        }

        redirect(controller: 'home', action: 'contactUs')
    }
}
