grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.war.file = "target/ianandco.war"
grails.plugin.repos.resolveOrder=[]
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenCentral()

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        mavenLocal()
 //       mavenCentral()
//        mavenRepo "http://snapshots.repository.codehaus.org"
//        mavenRepo "http://repository.codehaus.org"
//        mavenRepo "http://download.java.net/maven/2/"
//        mavenRepo "http://repository.jboss.com/maven2/"
        mavenRepo "http://oss.sonatype.org/content/repositories/releases/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

        runtime 'mysql:mysql-connector-java:5.1.13'
        runtime 'postgresql:postgresql:8.4-702.jdbc3'
        compile 'c3p0:c3p0:0.9.1.2'

        compile('org.codehaus.groovy.modules.http-builder:http-builder:0.5.2') {
            excludes 'groovy', 'xml-apis'
        }

    }

    plugins {
        runtime ":resources:1.1.6"
        runtime ":jquery:1.7.1"
        runtime ':fixtures:1.1'

        compile ':heroku:1.0'
        compile ':cloud-support:1.0.8'
        compile ":taggable:1.0.1"
        compile ":jquery-ui:1.8.15"
        compile ":lesscss:1.0.0"
        compile ":spring-security-core:1.2.7.3"
        compile ":mail:1.0"
        compile ":executor:0.3"
        compile ":email-validator:0.1"


        test ':build-test-data:1.1.1'

    }

}
