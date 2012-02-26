grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
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

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
//        mavenLocal()
//        mavenCentral()
//        mavenRepo "http://snapshots.repository.codehaus.org"
//        mavenRepo "http://repository.codehaus.org"
//        mavenRepo "http://download.java.net/maven/2/"
//        mavenRepo "http://repository.jboss.com/maven2/"
        mavenRepo "http://oss.sonatype.org/content/repositories/releases/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

        // runtime 'mysql:mysql-connector-java:5.1.13'
        runtime 'postgresql:postgresql:8.4-702.jdbc3'

    }

    plugins {
        runtime ":resources:1.1.6"
        compile ':heroku:1.0'
        compile ':cloud-support:1.0.8'
        test ':spock 0.5-groovy-1.7'
        runtime ":jquery:1.7.1"
        compile ":jquery-ui:1.8.15"
        compile ":lesscss:1.0.0"

        runtime ':fixtures:1.1'
        test ':build-test-data:1.1.1'
    }

}
