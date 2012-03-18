import grails.plugin.spock.IntegrationSpec
import com.ianandco.Property

class PropertyIntegrationSpec extends IntegrationSpec {

    def 'Property can return three latest properties'() {
        given:'Five properties'
            def date = new Date()
            def p1 = Property.build(title: 'luveve', dateCreated: date, active: true )
            def p2 = Property.build(title: 'magwegwe', dateCreated: date +1, active: true )
            def p3 = Property.build(title: 'kilarney', dateCreated: date +2, active: true )
            def p4 = Property.build(title: 'makokoba', dateCreated: date +3, active: true )

        when:'newListings is called'
            def listing = Property.newListings().list()

        then:'the last three properties are returned'
            listing.size
        and:
            listing*.title.intersect(['magwegwe', 'kilarney', 'makokoba']) == ['magwegwe', 'kilarney', 'makokoba']

    }
}
