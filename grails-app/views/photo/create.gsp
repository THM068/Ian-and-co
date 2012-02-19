

<%@ page import="com.ianandco.Photo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${photoInstance}">
            <div class="errors">
                <g:renderErrors bean="${photoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fileName"><g:message code="photo.fileName.label" default="File Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: photoInstance, field: 'fileName', 'errors')}">
                                    <g:textField name="fileName" value="${photoInstance?.fileName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="caption"><g:message code="photo.caption.label" default="Caption" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: photoInstance, field: 'caption', 'errors')}">
                                    <g:textField name="caption" value="${photoInstance?.caption}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="property"><g:message code="photo.property.label" default="Property" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: photoInstance, field: 'property', 'errors')}">
                                    <g:select name="property.id" from="${com.ianandco.Property.list()}" optionKey="id" value="${photoInstance?.property?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
