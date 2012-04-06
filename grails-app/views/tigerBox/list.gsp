
<%@ page import="com.ianandco.TigerBox" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'tigerBox.label', default: 'TigerBox')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'tigerBox.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="page" title="${message(code: 'tigerBox.page.label', default: 'Page')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tigerBoxInstanceList}" status="i" var="tigerBoxInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tigerBoxInstance.id}">${fieldValue(bean: tigerBoxInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: tigerBoxInstance, field: "page")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tigerBoxInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
