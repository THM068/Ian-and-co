

<%@ page import="com.ianandco.TigerBox" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'tigerBox.label', default: 'TigerBox')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tigerBoxInstance}">
            <div class="errors">
                <g:renderErrors bean="${tigerBoxInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${tigerBoxInstance?.id}" />
                <g:hiddenField name="version" value="${tigerBoxInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="page"><g:message code="tigerBox.page.label" default="Page" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tigerBoxInstance, field: 'page', 'errors')}">
                                    <g:select name="page" from="${com.ianandco.Page?.values()}" keys="${com.ianandco.Page?.values()*.name()}" value="${tigerBoxInstance?.page?.name()}" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="photos"><g:message code="tigerBox.photos.label" default="Photos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tigerBoxInstance, field: 'photos', 'errors')}">
                                    <g:select name="photos" from="${com.ianandco.Photo.list()}" multiple="yes" optionKey="id" size="5" value="${tigerBoxInstance?.photos*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
