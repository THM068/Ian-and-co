
<%@ page import="com.ianandco.TigerBox" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'tigerBox.label', default: 'TigerBox')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1>Slide Show</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:if test="${flash.error}">
            <div class="errors">${flash.error}</div>
            </g:if>

            <table>
                <tbody>
                    <tr class="prop">
                        <td valign="top" class="name"><g:message code="tigerBox.page.label" default="Page"/></td>

                        <td valign="top" class="value">${tigerBoxInstance?.page?.encodeAsHTML()}</td>

                    </tr>
                </tbody>
            </table>
            <h3>Add a Photo</h3>
            <g:form action="addPhoto" controller="tigerBox">
                <g:hiddenField name="tigerBoxId" value="${tigerBoxInstance.id}" />
                <g:textField name="fileName" style="width: 500px;"/>
                <g:submitButton name="submit" value="Submit"  />
            </g:form>

            <br>
            <g:if test="${tigerBoxInstance?.photos?.size() > 0}">
                <g:each in="${tigerBoxInstance.photos}" var="p">
                    <img src="${p}" width="100" height="100"/>
                    <g:link action="removePhoto" controller="tigerBox" params="[tigerBoxId: tigerBoxInstance.id, fileName: p]" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link>
                    <br/>
                </g:each>
            </g:if>
        </div>
    </body>
</html>
