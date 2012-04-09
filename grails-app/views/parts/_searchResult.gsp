<div class="searchresult">
    <g:if test="${property?.photos?.size() > 0}">
        <img src="${property?.photos?.first()?.fileName}" height="195" width="281" />

    </g:if>
    <g:else>
         <img src="https://s3.amazonaws.com/ian-co-images/header_home_img.jpg" height="195" width="281"
         alt="5511 Adeliade Ave."/>
    </g:else>

    <div class="listinginfo">
        <div class="address">
            <h3><a href="listing_detail.html">${property?.title}.</a></h3>

            <p class="location">${property?.location}</p>
        </div>

        <p class="price" style="margin-bottom: 5px;">$${property?.sellingPrice}</p>

        <p class="mls" style="margin-bottom: 5px; font-size: 14px;">ID #${property?.id}</p>

        <p class="bedbathsqft">${property?.numberOfBedrooms} Bed, ${property?.numberOfBathrooms} Bath</p>

        <p class="propertytype">Property Type: ${property?.propertyType}</p>
    </div>
</div>