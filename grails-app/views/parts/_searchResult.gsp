<div class="searchresult">
    <g:link controller="home" action="propertyDetails" id="${property.id}">
        <g:if test="${property?.photos?.size() > 0}">
            <img src="${property?.photos?.first()?.fileName}" height="195" width="281"/>

        </g:if>
        <g:else>
            <img src="http://www.leapfin.co.uk/ianandco/placeholder/placeholder.jpg" height="195" width="281"
                 alt="5511 Adeliade Ave."/>
        </g:else>
    </g:link>
    <div class="listinginfo">
        <div class="address">
            <h3><g:link controller="home" action="propertyDetails" id="${property.id}">${property?.title}.</g:link></h3>

            <p class="location">${property?.location}</p>
        </div>

        <p class="price" style="margin-bottom: 5px;">$<g:formatNumber number="${property.sellingPrice}" format="###,####,###"/></p>

        <p class="mls" style="margin-bottom: 5px; font-size: 14px;">ID #${property?.id}</p>

        <g:if test="${property.propertyType == 'Residential'}">
            <p class="bedbathsqft">${property?.numberOfBedrooms} Bed, ${property?.numberOfBathrooms} Bathrooms</p>

        </g:if>
        <g:else>
            <p class="bedbathsqft">Property Use: ${property?.propertyPurpose} </p>
            <p class="bedbathsqft">${property?.numberOfOffices} Offices , Space Available :${property?.spaceAvailable} m<sup>2</sup> </p>
        </g:else>

        <p class="shortDescription">
            ${property.shortDescription}
        </p>
        <g:link controller="home" action="propertyDetails" id="${property.id}" class="readMore">Read More ...</g:link>

    </div>
</div>