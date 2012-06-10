<html>
<head><title>Property Details - ${propertyInstance?.location}</title>
    <meta content="main" name="layout"/>

</head>

<body>
<div id="listingwrap">
    <g:render template="/parts/sidebar"/>

    %{----}%
    <div id="property-main">
         <div id="property-title">
             <p class="title">${propertyInstance?.title}</p>
             <p class="price" >$${propertyInstance.sellingPrice}</p>
         </div>
        <div class="description" role="display-property-details" >
            <h2>Key features:</h2>
            <ul>
                <li> A ${propertyInstance?.propertyType == 'Residential' ? 'Residential' : 'Commercial'} property</li>
                <li ><span class="li-label">Located in ${propertyInstance?.location}</span></li>
                <li><span class="li-label">Roof:</span>${propertyInstance?.roofType}</li>
                <li><span class="li-label">Wall:</span>${propertyInstance?.wallType}</li>
                <g:if test="${propertyInstance?.propertyType == 'Residential' ? 'Residential' : 'Commercial'}">
                    <li><span class="li-label">${propertyInstance?.numberOfBedrooms} bedrooms</li>
                    <li><span class="li-label">${propertyInstance?.numberOfBathrooms} bathrooms</li>
                </g:if>

                <li><span class="li-label">Property size:</span>${propertyInstance?.size} m<sup>2</sup></li>

            </ul>
            <h4>Full Description</h4>
            <p>${propertyInstance.description}</p>

            <h3>Contact us </h3>
             <g:if test="${flash.message !=null}">
                 <p style="color:green; font-weight: bold">
                     <g:message code="${flash.message}"/>
                 </p>
             </g:if>
            <g:if test="${flash.error !=null}">
                <p style="color:red; font-weight: bold">
                    <g:message code="${flash.error}"/>
                </p>
            </g:if>
            <g:render template="/parts/contactForm" model="[propertyInstance: propertyInstance]"/>

        </div>

    <div class="property-thumbnails" role="display-property-thumbnails" style="float: left; width: 160px">
            <ul class="thumbnails" >
                <g:if test="${propertyInstance?.photos?.size() > 0}">
                    <g:each in="${propertyInstance?.photos}" var="photo" status="i">
                        <li>
                            <a class="thumbnail" href="${photo?.fileName}">
                                <img src="${photo?.fileName}" width="160" height="120">
                            </a>
                        </li>
                    </g:each>
                </g:if>
                <g:else>
                    <li>
                        <a href="http://www.leapfin.co.uk/ianandco/placeholder/placeholder.jpg" class="thumbnail">
                            <img src="http://www.leapfin.co.uk/ianandco/placeholder/placeholder.jpg" width="160"
                                 height="120">
                        </a>
                    </li>
                </g:else>

            </ul>
        </div>
        <div class="clear"></div>


    </div>
</div>
<script type="text/javascript" src="http://www.leapfin.co.uk/scripts/jquery.easing-1.3.pack.js"></script>
<script type="text/javascript" src="http://www.leapfin.co.uk/scripts/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="http://www.leapfin.co.uk/scripts/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript">
    $(function() {
        $("a.thumbnail").fancybox({
            'transitionIn'    :    'elastic',
            'transitionOut'    :    'elastic',
            'speedIn'        :    600,
            'speedOut'        :    200,
            'overlayShow'    :    false
        });
    });
</script>

</body>
</html>
