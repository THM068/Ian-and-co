
<%@ page import="com.ianandco.Property" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table class="table table-striped">
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'property.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'property.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'property.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'property.location', default: 'Location')}" />
                        
                            <g:sortableColumn property="province" title="${message(code: 'property.province.label', default: 'Province')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${propertyInstanceList}" status="i" var="propertyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link controller="property" action="edit" id="${propertyInstance.id}">${fieldValue(bean: propertyInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: propertyInstance, field: "title")}</td>
                        
                            <td>${fieldValue(bean: propertyInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: propertyInstance, field: "location")}</td>
                        
                            <td>${fieldValue(bean: propertyInstance, field: "province")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${propertyInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
