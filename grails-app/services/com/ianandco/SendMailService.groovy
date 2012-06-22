package com.ianandco
import groovyx.net.http.*
import grails.converters.JSON

class SendMailService {
    def mailService

    def sendEnquiryEmail(recipient,map) {
        def vHTML = '/parts/sendEnquiryHTML'
        def vText = '/parts/sendEnquiryTEXT'

        //runAsync {
            mailService.sendMail {
                multipart true
                to recipient
                from 'ianandcoproperties@gmail.com'
                subject 'Property Enquiry'
                html(view: vHTML, model: map)
                text(view: vText, model: map)
            }
        //}

    }

}
