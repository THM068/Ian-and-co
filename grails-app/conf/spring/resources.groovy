import com.mchange.v2.c3p0.*
import org.springframework.mail.MailSender
import org.springframework.mail.javamail.JavaMailSenderImpl

// Place your Spring DSL code here
beans = {
    if (grails.util.GrailsUtil.environment == 'production') {
        println 'I have been called'
        dataSource(ComboPooledDataSource) { bean ->
            bean.destroyMethod = 'close'
            //use grails' datasource configuration for connection user, password, driver and JDBC url
            user = 'ianandco'
            password = 'ianandco'
            driverClass = 'com.mysql.jdbc.Driver'
            jdbcUrl = 'jdbc:mysql://localhost:3306/ianandco_prod?autoReconnect=true'
            //force connections to renew after 2 hours
            maxConnectionAge = 2 * 60 * 60
            //get rid too many of idle connections after 30 minutes
            maxIdleTimeExcessConnections = 30 * 60
        }
        println 'I have been called closed'
    }

    MailSender mailSender = new JavaMailSenderImpl();
    mailSender.host = 'https://email.us-east-1.amazonaws.com'

}
