

<%@ page import="com.ianandco.TigerBox" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'tigerBox.label', default: 'TigerBox')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1>Slide Show</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tigerBoxInstance}">
            <div class="errors">
                <g:renderErrors bean="${tigerBoxInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
