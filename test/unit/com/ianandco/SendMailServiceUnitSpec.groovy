package com.ianandco

import grails.plugin.spock.UnitSpec
import grails.plugin.mail.MailService


class SendMailServiceUnitSpec extends UnitSpec {
    def sendMailService
    def setup() {
        sendMailService = new SendMailService()
        sendMailService.mailService = Mock(MailService)

        sendMailService.metaClass.runAsync = {
            mailService.sendMail { _ }
        }

    }
    def 'Send mail service can send an enquiry email' () {
        given:
            def recipient = 'some-email'
            def map = [email: 'email@name', name: 'some-name']
        when:
            sendMailService.sendEnquiryEmail(recipient,map)
        then:
            1 * sendMailService.mailService.sendMail { _ }


    }
}
