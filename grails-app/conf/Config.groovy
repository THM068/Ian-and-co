// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if(System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }


grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// whether to install the java.util.logging bridge for sl4j. Disable for AppEngine!
grails.logging.jul.usebridge = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []

grails.plugin.databasemigration.updateOnStart = true
grails.plugin.databasemigration.updateOnStartFileNames = ['changelog.groovy']

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']
grails.app.context="/ianandco"
// set per-environment serverURL stem for creating absolute links

environments {
    production {
        grails.ianandco.email="mail.ianandcoproperties@gmail.com"
        grails.serverURL = "http://http://www.ianandco.com/"
    }
    development {
        grails.ianandco.email="thando.mafela@googlemail.com"
        fixtures.enabled = true
        grails.serverURL = "http://localhost:8080"
    }
    test {
        grails.ianandco.email="thando.mafela@googlemail.com"
        grails.serverURL = "http://localhost:8080/${appName}"
    }

}

// log4j configuration
log4j = {
    //Example of changing the log pattern for the default console
    appender:

    appenders {
        rollingFile name: "ianandco",
        file: "/var/log/ianandco.log",
        layout:pattern(conversionPattern: '%c{2} %m%n')

        //console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    }

    root {
        error 'stdout', 'ianandco'
    }

    error  'org.codehaus.groovy.grails.web.servlet',  //  controllers
           'org.codehaus.groovy.grails.web.pages', //  GSP
           'org.codehaus.groovy.grails.web.sitemesh', //  layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping', // URL mapping
           'org.codehaus.groovy.grails.commons', // core / classloading
           'org.codehaus.groovy.grails.plugins', // plugins
           'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'

    warn   'org.mortbay.log'
}

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.ianandco.CmsUser'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.ianandco.CmsUserCmsRole'
grails.plugins.springsecurity.authority.className = 'com.ianandco.CmsRole'

grails {
    //configureAWS()
    mail {
        host = 'in.mailjet.com'
	    port = 25
        username = '55d343a242adbc74992392860d59aa90'
	    password = '59961ae546fba3021d9e0b22977dca67'
    }

    plugin {
    aws {
        credentials {
            accessKey = 'AKIAJPDNRQXIQYF27EKQ'
            secretKey = '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'
        }
        s3 {
            bucket = 'static.ianandco.com'
            acl = 'public'
            rrs = true
        }
    }
}


}

def configureAWS() {

    mail {
        host = 'email-smtp.us-east-1.amazonaws.com'
	    port = 25
        username = 'AKIAJ53KBTLPNN22SFZA'
	    password = 'AtvePki2TC9kzgNAI4Fcy/1wyVNenURb/njTF79qzeWz'
        props = [
                'mail.transport.protocol': 'aws',
                'mail.aws.class': 'com.amazonaws.services.simpleemail.AWSJavaMailTransport',
                'mail.aws.user': 'AKIAJ53KBTLPNN22SFZA',
                'mail.aws.password': 'AtvePki2TC9kzgNAI4Fcy/1wyVNenURb/njTF79qzeWz'
        ]
    }

}

