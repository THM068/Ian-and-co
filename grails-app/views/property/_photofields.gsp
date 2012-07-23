<g:uploadForm controller="property" action="upload">
    <div id="photo-field-container">
        <input type="hidden" value="${propertyInstance?.id}" name="propertyId">
        <input type="file" name='fileName' id="fileNameField" >
        <input type="submit" value="Submit" onclick="showSpinner();" >
        <span id="spinner" style="display: none">
            <img src="${resource(dir: 'images', file: 'spinner.gif')}" />
            Loading ....
        </span>
    </div>
</g:uploadForm>
<div id='photoList'>
    <div id='errors'></div>
    <ul id='photoResults'>
        <g:each in="${propertyInstance.photos}" var="photo">
            <li id="item_${photo.id}">
                <img src="${photo.fileName}" width="200" height="200" />
                <g:link controller="property" action="removePhoto" params="[photoId: photo.id]">Delete</g:link>
            </li>
        </g:each>

    </ul>
    <r:script>
        function showSpinner() {
            $('#spinner').show();
        }
    </r:script>
</div>