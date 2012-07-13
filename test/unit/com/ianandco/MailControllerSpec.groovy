package com.ianandco

import grails.plugin.spock.ControllerSpec
import grails.plugins.emailvalidator.EmailValidatorService


class MailControllerSpec extends ControllerSpec {
    def sendMailService
    def emailValidatorService
    def setup(){
        sendMailService = Mock(SendMailService)
        controller.sendMailService = sendMailService

        emailValidatorService = Mock(EmailValidatorService)
        controller.emailValidatorService = emailValidatorService

        1 * emailValidatorService.check (_) >> [syntaxValid : true]



        mockConfig("""
            grails.ianandco.email = 'someone@email.com'
        """)

    }
    def 'A user can send an enquiry email in the contact us page'() {
        given:
            controller.params.name = 'some name'
            controller.params.email = 'myemail@something.com'
            controller.params.telephone = '01294344'
            controller.params.message = 'Some crazy message'
        when:
            controller.sendEnquiry()
        then:
            1 * sendMailService.sendEnquiryEmail(_,_ as Map)
        and:
            controller.flash.message == 'email.sent.success'
        and:
            controller.redirectArgs.controller == 'home'
        and:
            controller.redirectArgs.action == 'contactUs'
    }

    def 'An email is not sent if the senders email is not specified'() {
        given:
            controller.params.name = 'some name'
            controller.params.telephone = '01294344'
            controller.params.message = 'Some crazy message'
        when:
            controller.sendEnquiry()

        then:
             0 * sendMailService._
    }

    def 'An email is not sent if the senders email is invalid'() {
        given:
            controller.params.name = 'some name'
            controller.params.email = 'myemailsomething.com'
            controller.params.telephone = '01294344'
            controller.params.message = 'Some crazy message'
        when:
            controller.sendEnquiry()

        then:
            1 * emailValidatorService.check(_) >> [syntaxValid: false]
        and:
            controller.flash.message == 'email.sent.error'
        and:
            controller.redirectArgs.controller == 'home'
        and:
            controller.redirectArgs.action == 'contactUs'
    }


}
