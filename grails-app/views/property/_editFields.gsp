<div class="form-container">
    <div class="row">
        <label for="title">
            <g:message code="property.title.label" default="Title" />
        </label>
        <g:textField name="title" value="${propertyInstance?.title}" />
    </div>
    <div class="row">
        <label for="description">
            <g:message code="property.description.label" default="Description" />
        </label>
        <g:textArea  rows="8" cols="10" name="description" value="${propertyInstance?.description}" />
    </div>
    <div class="row">
        <label for="propertyType"><g:message code="property.propertyType.label" default="Property Type" /></label>
        <g:textField name="propertyType" value="${propertyInstance?.propertyType}" />
    </div>
    <div class="row">
        <label for="numberOfBathrooms"><g:message code="property.numberOfBathrooms.label" default="Number Of Bathrooms" /></label>
        <g:textField name="numberOfBathrooms" value="${fieldValue(bean: propertyInstance, field: 'numberOfBathrooms')}" />
    </div>

    <div class="row">
        <label for="numberOfBedrooms"><g:message code="property.numberOfBedrooms.label" default="Number Of Bedrooms" /></label>
        <g:textField name="numberOfBedrooms" value="${fieldValue(bean: propertyInstance, field: 'numberOfBedrooms')}" />
    </div>
    <div class="row">
        <label for="floorType">
            <g:message code="property.floorType.label" default="Floor Type" />
        </label>
        <g:textField name="floorType" value="${propertyInstance?.floorType}" />
    </div>
    <div class="row">
        <label for="roofType">
            <g:message code="property.roofType.label" default="Roof Type" />
        </label>
        <g:textField name="roofType" value="${propertyInstance?.roofType}" />
    </div>

     <div class="row">
        <label for="diningRoom"><g:message code="property.diningRoom.label" default="Dining Room" /></label>
        <g:checkBox name="diningRoom" value="${propertyInstance?.diningRoom}" />
    </div>
     <div class="row">
        <label for="lounge"><g:message code="property.lounge.label" default="lounge" /></label>
        <g:checkBox name="lounge" value="${propertyInstance?.lounge}" />
    </div>
    <div class="row">
        <label for="builtInCupboards"><g:message code="property.builtInCupboards.label" default="Built In Cupboards" /></label>
        <g:checkBox name="builtInCupboards" value="${propertyInstance?.builtInCupboards}" />
    </div>
    <div class="row">
        <label for="kitchen"><g:message code="property.kitchen.label" default="Kitchen" /></label>
        <g:checkBox name="kitchen" value="${propertyInstance?.kitchen}" />
    </div>
    <div class="row">
        <label for="garden"><g:message code="property.garden.label" default="Garden" /></label>
        <g:checkBox name="garden" value="${propertyInstance?.garden}" />
    </div>
    <div class="row">
        <label for="roofType"><g:message code="property.roofType.label" default="Roof Type" /></label>
        <g:textField name="roofType" value="${propertyInstance?.roofType}" />
    </div>

    <div class="row">
        <label for="size"><g:message code="property.size.label" default="Size" /></label>
        <g:textField name="size" value="${propertyInstance?.size}" />
    </div>



    <div class="row">
        <label for="city">
            <g:message code="property.city.label" default="City" />
        </label>
        <g:textField name="city" value="${propertyInstance?.city}" />
    </div>
    <div class="row">
        <label for="province">
            <g:message code="property.province.label" default="Province" />
        </label>
        <g:textField name="province" value="${propertyInstance?.province}" />
    </div>
    <div class="row">
        <label for="suburb">
            <g:message code="property.suburb.label" default="Suburb" />
        </label>
        <g:textField name="suburb" value="${propertyInstance?.suburb}" />
    </div>

    <div class="row">
        <label for="sellingPrice"><g:message code="property.sellingPrice.label" default="Selling Price" /></label>
        <g:textField name="sellingPrice" value="${fieldValue(bean: propertyInstance, field: 'sellingPrice')}" />
    </div>
     <div class="row">
        <label for="depositPercentage"><g:message code="property.depositPercentage.label" default="Deposit Percentage" /></label>
        <g:textField name="depositPercentage" value="${fieldValue(bean: propertyInstance, field: 'depositPercentage')}" />
    </div>
    <div class="row">
        <label for="interestRate"><g:message code="property.interestRate.label" default="Interest Rate" /></label>
        <g:textField name="interestRate" value="${fieldValue(bean: propertyInstance, field: 'interestRate')}" />
    </div>
    <div class="row">
        <label for="loanTerm"><g:message code="property.loanTerm.label" default="Loan Term" /></label>
        <g:textField name="loanTerm" value="${fieldValue(bean: propertyInstance, field: 'loanTerm')}" />
    </div>

    <div class="row">
        <label for="active"><g:message code="property.active.label" default="Active" /></label>
        <g:checkBox name="active" value="${propertyInstance?.active}" />
    </div>
    <div class="row">
        <label for="editorChoice"><g:message code="property.editorChoice.label" default="Editor Choice" /></label>
        <g:checkBox name="editorChoice" value="${propertyInstance?.editorChoice}" />
    </div>
</div>

                        
                            
                        
                        
                        

                        
