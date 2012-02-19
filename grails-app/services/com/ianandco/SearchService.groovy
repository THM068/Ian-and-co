package com.ianandco

import org.springframework.beans.factory.InitializingBean
import org.elasticsearch.groovy.client.GClient
import org.elasticsearch.groovy.node.GNode
import org.elasticsearch.groovy.node.GNodeBuilder
import static org.elasticsearch.groovy.node.GNodeBuilder.*


class SearchService implements InitializingBean {

    def grailsApplication
    GNode node
    GClient client

    void afterPropertiesSet() {
        log.error "Creating ElasticSearch node..."
        if(node) {
            node.close()
        }

        GNodeBuilder nodeBuilder = nodeBuilder()
        nodeBuilder.settings {
            path {
                data = grailsApplication.config.elasticSearch.elasticDataPath
            }
            gateway {
                type = 'none'
            }
            cluster {
                name = 'ssm'
            }
            node {
                local = true
                data = true
            }
        }

        node = nodeBuilder.node()
        client = node.client
        log.error "Node created"
    }

    def indexAllProperties() {
        log.error "Start indexing properties"
        def propertys = Property.list()

        propertys.each { property ->
            def resp = client.index {
                index 'ssm'
                type 'track'
                id property.id.toString()
                source {
                    propertyId = property.id

                }
            }
        }
    }
}
