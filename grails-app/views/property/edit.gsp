

<%@ page import="com.ianandco.Property" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
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
            <g:hasErrors bean="${propertyInstance}">
            <div class="errors">
                <g:renderErrors bean="${propertyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${propertyInstance?.id}" />
                <g:hiddenField name="version" value="${propertyInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="property.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${propertyInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="property.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${propertyInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="city"><g:message code="property.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${propertyInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="suburb"><g:message code="property.suburb.label" default="Suburb" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'suburb', 'errors')}">
                                    <g:textField name="suburb" value="${propertyInstance?.suburb}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="province"><g:message code="property.province.label" default="Province" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'province', 'errors')}">
                                    <g:select name="province" from="${propertyInstance.constraints.province.inList}" value="${propertyInstance?.province}" valueMessagePrefix="property.province"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="floorType"><g:message code="property.floorType.label" default="Floor Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'floorType', 'errors')}">
                                    <g:textField name="floorType" value="${propertyInstance?.floorType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="roofType"><g:message code="property.roofType.label" default="Roof Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'roofType', 'errors')}">
                                    <g:textField name="roofType" value="${propertyInstance?.roofType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="size"><g:message code="property.size.label" default="Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'size', 'errors')}">
                                    <g:textField name="size" value="${propertyInstance?.size}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="active"><g:message code="property.active.label" default="Active" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'active', 'errors')}">
                                    <g:checkBox name="active" value="${propertyInstance?.active}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="builtInCupboards"><g:message code="property.builtInCupboards.label" default="Built In Cupboards" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'builtInCupboards', 'errors')}">
                                    <g:checkBox name="builtInCupboards" value="${propertyInstance?.builtInCupboards}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="depositPercentage"><g:message code="property.depositPercentage.label" default="Deposit Percentage" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'depositPercentage', 'errors')}">
                                    <g:textField name="depositPercentage" value="${fieldValue(bean: propertyInstance, field: 'depositPercentage')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="diningRoom"><g:message code="property.diningRoom.label" default="Dining Room" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'diningRoom', 'errors')}">
                                    <g:checkBox name="diningRoom" value="${propertyInstance?.diningRoom}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="editorChoice"><g:message code="property.editorChoice.label" default="Editor Choice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'editorChoice', 'errors')}">
                                    <g:checkBox name="editorChoice" value="${propertyInstance?.editorChoice}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="garden"><g:message code="property.garden.label" default="Garden" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'garden', 'errors')}">
                                    <g:checkBox name="garden" value="${propertyInstance?.garden}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="interestRate"><g:message code="property.interestRate.label" default="Interest Rate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'interestRate', 'errors')}">
                                    <g:textField name="interestRate" value="${fieldValue(bean: propertyInstance, field: 'interestRate')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="kitchen"><g:message code="property.kitchen.label" default="Kitchen" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'kitchen', 'errors')}">
                                    <g:checkBox name="kitchen" value="${propertyInstance?.kitchen}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="loanTerm"><g:message code="property.loanTerm.label" default="Loan Term" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'loanTerm', 'errors')}">
                                    <g:textField name="loanTerm" value="${fieldValue(bean: propertyInstance, field: 'loanTerm')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lounge"><g:message code="property.lounge.label" default="Lounge" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'lounge', 'errors')}">
                                    <g:checkBox name="lounge" value="${propertyInstance?.lounge}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numberOfBathrooms"><g:message code="property.numberOfBathrooms.label" default="Number Of Bathrooms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'numberOfBathrooms', 'errors')}">
                                    <g:textField name="numberOfBathrooms" value="${fieldValue(bean: propertyInstance, field: 'numberOfBathrooms')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numberOfBedrooms"><g:message code="property.numberOfBedrooms.label" default="Number Of Bedrooms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'numberOfBedrooms', 'errors')}">
                                    <g:textField name="numberOfBedrooms" value="${fieldValue(bean: propertyInstance, field: 'numberOfBedrooms')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="photos"><g:message code="property.photos.label" default="Photos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'photos', 'errors')}">
                                    
<ul>
<g:each in="${propertyInstance?.photos?}" var="p">
    <li><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="photo" action="create" params="['property.id': propertyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'photo.label', default: 'Photo')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="propertyType"><g:message code="property.propertyType.label" default="Property Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'propertyType', 'errors')}">
                                    <g:textField name="propertyType" value="${propertyInstance?.propertyType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sellingPrice"><g:message code="property.sellingPrice.label" default="Selling Price" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'sellingPrice', 'errors')}">
                                    <g:textField name="sellingPrice" value="${fieldValue(bean: propertyInstance, field: 'sellingPrice')}" />
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
