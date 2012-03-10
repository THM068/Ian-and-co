dataSource {
    pooled = true
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	driverClassName = 'com.mysql.jdbc.Driver'
	username = 'ianandco'
	password = 'ianandco'

}
properties {
		maxActive = 250
		maxIdle = 25
		minIdle = 5
		initialSize = 5
		minEvictableIdleTimeMillis = 1000 * 60 * 5
		timeBetweenEvictionRunsMillis = 1000 * 60 * 5
		maxWait = 10000
		testOnBorrow = true
		testWhileIdle = true
		testOnReturn = false
		validationQuery = 'SELECT 1'
	}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            url = 'jdbc:mysql://localhost:3306/ianandco?autoReconnect=true'
            //logSql = true
            properties {
                validationQuery = "SELECT 1"
            }
        }
    }
    dbdiff {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:mysql://localhost:3306/ianandco_diff"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            url = 'jdbc:mysql://localhost:3306/ianandco_prod?autoReconnect=true'
        }
        //logSql = true
         properties {
                validationQuery = "SELECT 1"
         }
    }


}
