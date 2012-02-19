
<%@ page import="com.ianandco.Photo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
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
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'photo.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fileName" title="${message(code: 'photo.fileName.label', default: 'File Name')}" />
                        
                            <g:sortableColumn property="caption" title="${message(code: 'photo.caption.label', default: 'Caption')}" />
                        
                            <th><g:message code="photo.property.label" default="Property" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${photoInstanceList}" status="i" var="photoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: photoInstance, field: "fileName")}</td>
                        
                            <td>${fieldValue(bean: photoInstance, field: "caption")}</td>
                        
                            <td>${fieldValue(bean: photoInstance, field: "property")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${photoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
