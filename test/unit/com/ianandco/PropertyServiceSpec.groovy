package com.ianandco

import grails.plugin.spock.UnitSpec


class PropertyServiceSpec extends UnitSpec {
    def propertyService

    def setup() {
        propertyService = new PropertyService()
    }

    def 'can create an editors pick'() {
        given:'a number of properties'
            def p1 = new Property(title: 'p1',active: true, editorChoice: false)
            def p2 = new Property(title: 'p2',active: true, editorChoice: true)
            def p3 = new Property(title: 'p3',active: true, editorChoice: false)
            def p4 = new Property(title: 'p4',active: true, editorChoice: false)
            mockDomain(Property, [ p1, p2, p3, p4 ])

        when:'editor pick is called'
            propertyService.editorsChoice(p3)

        then: 'one property is the editors pick'
            p3.editorChoice
        and:
            !p2.editorChoice
    }

    def 'A visit to a property is recorded'(){
        given:
            def property = new Property(id: 1)
            mockDomain Property , [property]
            mockDomain Visit

        when:
            propertyService.recordVisit(property)

        then:
            Visit.list().size() == 1
        and:
            def visit = Visit.list().first()
            visit.property.id == property.id
    }
}
