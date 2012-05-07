package com.ianandco
import groovyx.net.http.*
import grails.converters.JSON

class SendMailService {
    def mailService

    def sendEnquiryEmail(recipient,map) {
        def vHTML = '/parts/sendEnquiryHTML'
        def vText = '/parts/sendEnquiryText'

        runAsync {
            mailService.sendMail {
                multipart true
                to recipient
                from map.email
                subject 'General Enquiry'
                html(view: vHTML, model: map)
                text(view: vText, model: map)
            }
        }
    }

}
