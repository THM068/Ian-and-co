<%@ page import="com.ianandco.Location" %>
<div class="form-container">
    <fieldset>
        <legend>General Information</legend>

        <div class="row">
            <label for="title">
                <g:message code="property.title.label" default="Title"/>
            </label>
            <g:textField name="title" value="${propertyInstance?.title}"/>
        </div>

        <div class="row">
            <label for="province">
                <g:message code="property.propertyType.label" default="Type"/>
            </label>
            <g:select from="${propertyInstance?.constraints.propertyType.inList}" name="propertyType"
                      value="${propertyInstance?.propertyType}"/>
        </div>

        <div class="row">
            <label for="title">
                <g:message code="property.title.label" default="Short Description"/>
            </label>
            <g:textField name="shortDescription" value="${propertyInstance?.shortDescription}"/>
        </div>


        <div class="row">
            <label for="description">
                <g:message code="property.description.label" default="Description"/>
            </label>
            <g:textArea rows="8" cols="10" name="description" value="${propertyInstance?.description}"/>
        </div>
    </fieldset>

    <fieldset>
        <legend>Activate Property</legend>

        <div class="row">
            <label for="active"><g:message code="property.active.label" default="Active"/></label>
            <g:checkBox name="active" value="${propertyInstance?.active}"/>
        </div>

        <div class="row">
            <label for="editorChoice"><g:message code="property.editorChoice.label" default="Editor Choice"/></label>
            <g:checkBox name="editorChoice" value="${propertyInstance?.editorChoice}"/>
        </div>

    </fieldset>

    <fieldset>
        <legend>Residential Property Information</legend>
        <div class="row">
            <label for="roofType">
                <g:message code="property.roofType.label" default="Roof Type"/>
            </label>
            <g:textField name="roofType" value="${fieldValue(bean: propertyInstance, field: 'roofType')}"/>
        </div>

        <div class="row">
            <label for="wallType">
                <g:message code="property.wallType.label" default="Wall Type"/>
            </label>
            <g:textField name="wallType" value="${fieldValue(bean: propertyInstance, field: 'wallType')}"/>
        </div>

        <div class="row">
            <label for="numberOfBathrooms"><g:message code="property.numberOfBathrooms.label"
                                                      default="Number Of Bathrooms"/></label>
            <g:textField name="numberOfBathrooms"
                         value="${fieldValue(bean: propertyInstance, field: 'numberOfBathrooms')}"/>
        </div>

        <div class="row">
            <label for="numberOfBedrooms"><g:message code="property.numberOfBedrooms.label"
                                                     default="Number Of Bedrooms"/></label>
            <g:textField name="numberOfBedrooms"
                         value="${fieldValue(bean: propertyInstance, field: 'numberOfBedrooms')}"/>
        </div>


        <div class="row">
            <label for="size">Land Area m<sup>2</sup></label>
            <g:textField name="size" value="${propertyInstance?.size}"/>
        </div>

    </fieldset>

    <fieldset>
        <legend>Location</legend>

        <div class="row">
            <label for="location">
                <g:message code="property.location.label" default="Location"/>
            </label>
            <g:select name="location" from="${Location.list()}" value="${propertyInstance?.location}" optionKey="name"
                      noSelection="['':'-Please select a location-']"/>
        </div>

        <div class="row">
            <label for="province">
                <g:message code="property.province.label" default="Province"/>
            </label>
            <g:select from="${propertyInstance?.constraints.province.inList}" name="province"
                      value="${propertyInstance?.province}"/>
        </div>
    </fieldset>

    <fieldset>
        <legend>Commercial Property Information</legend>

        <div class="row">
            <label for="numberOfOffices"><g:message code="property.officeNumber.label"
                                                    default="Number of Offices"/></label>
            <g:textField name="numberOfOffices"
                         value="${fieldValue(bean: propertyInstance, field: 'numberOfOffices')}"/>
        </div>

        <div class="row">
            <label for="spaceAvailable">Space available m<sup>2</sup></label>
            <g:textField name="spaceAvailable" value="${fieldValue(bean: propertyInstance, field: 'spaceAvailable')}"/>
        </div>

        <div class="row">
            <label for="propertyPurpose">Property Purpose</label>
            <g:textField name="propertyPurpose"
                         value="${fieldValue(bean: propertyInstance, field: 'propertyPurpose')}"/>
        </div>
    </fieldset>

    <fieldset>
        <legend>Property Prices</legend>

        <div class="row">
            <label for="sellingPrice"><g:message code="property.sellingPrice.label" default="Selling Price"/></label>
            <g:textField name="sellingPrice" value="${fieldValue(bean: propertyInstance, field: 'sellingPrice')}"/>
        </div>

        <div class="row">
            <label for="depositPercentage"><g:message code="property.depositPercentage.label"
                                                      default="Deposit Percentage"/></label>
            <g:textField name="depositPercentage"
                         value="${fieldValue(bean: propertyInstance, field: 'depositPercentage')}"/>
        </div>

        <div class="row">
            <label for="interestRate"><g:message code="property.interestRate.label" default="Interest Rate"/></label>
            <g:textField name="interestRate" value="${fieldValue(bean: propertyInstance, field: 'interestRate')}"/>
        </div>

        <div class="row">
            <label for="loanTerm"><g:message code="property.loanTerm.label" default="Loan Term"/></label>
            <g:textField name="loanTerm" value="${fieldValue(bean: propertyInstance, field: 'loanTerm')}"/>
        </div>
    </fieldset>


</div>

                        
                            
                        
                        
                        

                        
