package com.ianandco

import grails.plugin.spock.UnitSpec
import grails.converters.JSON

class HttpBuilderUnitSpec extends UnitSpec {

    def 'get json from leafin website'(){

        when:
            SendMailService ms = new SendMailService()
            ms.getJson()

        then:
            true

    }
}
