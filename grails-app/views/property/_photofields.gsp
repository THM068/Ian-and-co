<g:form controller="property" action="upload">
    <div id="photo-field-container">
        <input type="hidden" value="${propertyInstance?.id}" name="propertyId">
        <input type="text" name='fileName' id="fileNameField" >
        <input type="submit" value="Submit" id="uploadButton" >
    </div>
</g:form>
<div id='photoList'>
    <div id='errors'></div>
    <ul id='photoResults'>
        <g:each in="${propertyInstance.photos}" var="photo">
            <li id="item_${photo.id}">
                <img src="${photo.fileName}" width="200" height="200" />
            </li>
        </g:each>

    </ul>

</div>