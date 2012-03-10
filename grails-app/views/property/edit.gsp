<%@ page import="com.ianandco.Property" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <g:render template="../parts/cms/editorTextArea" />
        <g:render template="uploadPhotoScript" />

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <p></p>
            <div id="tabs">
                <ul>
                    <li><a href="#property-tab">Property</a></li>
                    <li><a href="#photos-tab" >Photos</a></li>
                </ul>
                    <div id="property-tab">
                        <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${propertyInstance}">
                            <div class="errors">
                                <g:renderErrors bean="${propertyInstance}" as="list" />
                            </div>
                        </g:hasErrors>
                        <g:form method="post" >
                            <g:hiddenField name="id" value="${propertyInstance?.id}" />
                            <g:hiddenField name="version" value="${propertyInstance?.version}" />
                            <g:render template="editFields" model="[propertyInstance: propertyInstance]"  />

                            <div class="buttons">
                                <span class="button"><g:actionSubmit class="save" action="update" controller="property" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                                <span class="button"><g:actionSubmit class="delete" action="delete"  value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                            </div>
                        </g:form>
                    </div>
                    <div id="photos-tab">
                        <h1>Upload Photo</h1>
                        <g:render template="photofields" model="[propertyInstance: propertyInstance]" />
                    </div>
            </div>
        </div>
        <r:script>
            $(function() {
                    $( "#tabs" ).tabs();
                });
        </r:script>
    </body>
</html>
