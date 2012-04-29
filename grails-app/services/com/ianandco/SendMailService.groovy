package com.ianandco
import groovyx.net.http.*
import grails.converters.JSON

class SendMailService {

    def getJson() {
        def http = new HTTPBuilder( 'http://www.leapfin.co.uk')

        http.get( path: 'test.json') { resp,json ->
            println resp.statusLine.statusCode + ' >>>> '

           def response = JSON.parse(json)
           println response.name
           println response.age
           println response.last

        }
    }

}
