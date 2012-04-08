package com.ianandco

import grails.plugin.spock.UnitSpec
import spock.lang.Unroll


class PermalinkSpec extends UnitSpec {

    @Unroll('A neighbourhood name with more than one part is converted to a permalink #title')
    def 'A neighbourhood name with more than one part is converted to a permalink'() {
        expect:
            new Permalink().convertToPermalink(title) == expected

        where:
            title      | expected
            'cars'     | 'cars'
            'one word' | 'one-word'
    }
}
