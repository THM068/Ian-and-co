
<%@ page import="com.ianandco.Property" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="cms" />
        <g:set var="entityName" value="${message(code: 'property.label', default: 'Property')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table class="table table-striped">
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.title.label" default="Title" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "title")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.city.label" default="City" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "city")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.suburb.label" default="Suburb" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "suburb")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.province.label" default="Province" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "province")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.floorType.label" default="Floor Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "floorType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.roofType.label" default="Roof Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "roofType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.size.label" default="Size" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "size")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.active.label" default="Active" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.active}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.builtInCupboards.label" default="Built In Cupboards" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.builtInCupboards}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.depositPercentage.label" default="Deposit Percentage" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "depositPercentage")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.diningRoom.label" default="Dining Room" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.diningRoom}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.editorChoice.label" default="Editor Choice" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.editorChoice}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.garden.label" default="Garden" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.garden}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.interestRate.label" default="Interest Rate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "interestRate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.kitchen.label" default="Kitchen" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.kitchen}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.loanTerm.label" default="Loan Term" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "loanTerm")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.lounge.label" default="Lounge" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${propertyInstance?.lounge}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.numberOfBathrooms.label" default="Number Of Bathrooms" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "numberOfBathrooms")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.numberOfBedrooms.label" default="Number Of Bedrooms" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "numberOfBedrooms")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.photos.label" default="Photos" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${propertyInstance.photos}" var="p">
                                    <li><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.propertyType.label" default="Property Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "propertyType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="property.sellingPrice.label" default="Selling Price" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "sellingPrice")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${propertyInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
