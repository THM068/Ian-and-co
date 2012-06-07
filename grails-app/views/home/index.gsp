<%@ page import="com.ianandco.TigerBox; com.ianandco.Page; com.ianandco.Property" %>
<g:set var="tigerBox" value="${TigerBox.findByPage(Page.HOME)}" />

<html>
<head>
    <title>Welcome to Ian and Co - Real Estate</title>
    <meta name="layout" content="main"/>

</head>

<body>
    <div id="main-image-container" class="span-12">
        <div id='home-image' >
            <g:if test="${tigerBox?.photos?.size() > 0}">
                <g:each in="${tigerBox?.photos}" var="p">
                    <img src="${p}" />
                </g:each>
            </g:if>
            <g:else>
                <img src="https://s3.amazonaws.com/ian-co-images/header_home_img.jpg" />
            </g:else>
            %{--<img src="http://www.leapfin.co.uk/ianandco/slides/house1.jpg" />--}%
            %{--<img src="http://www.leapfin.co.uk/ianandco/slides/house2.jpg" />--}%
        </div>
        <div id="homeintro">
            <h1>Start your Search</h1>
            <p>Whether you’re looking to buy a new home or rent/buy a commercial property, we have you covered. Let us help you find your property today.</p>
            <g:link mapping="resProperty" elementId="btnleft" >Residential</g:link>
            <g:link mapping="comProperty" elementId="btnright" >Commercial</g:link>
            <g:link mapping="locProperty" elementId="btnright" >Location</g:link>
        </div>
    </div>

    <div id="home-body">
        <div id="home-welcome">
            <h5>Contacts</h5>
            <address>
                <h4>Ian & Co</h4>
                10, Westbourne Suites  <br/>
                Josiah Tongogara<br/>
                Between 8th & 9th Avenue<br/>
                Email  <a href="mailto:cyian@iwayafrica.co.zw" style="color:blue">cyian@iwayafrica.co.zw</a><br/>
                P.O. Box 2883, Bulawayo, Zimbabwe <br/>
                <br/>
                <p>
                    Tel: +2639886626 or +2639886256<br/>
                    Cell: +263712871455 or +263775306392
                </p>
            </address>


        </div>
        <div id="feature-listing">
            <p></p>
            <h2>FEATURED LISTINGS</h2>
            <g:each in="${featuredListings}" var="property" >
                <g:set var="fileName" value="${property?.photos ? property?.photos[0]?.fileName : ''}" />
                <ul class="thumbnails" style="display: inline-block;">
                    <li>
                        <div class="feature-box" >
                            <h3 class="thumb-header" >${property.title}</h3>
                            <p></p>
                            <div class="image-thumb" >
                                 <g:link controller="home" action="propertyDetails" id="${property.id}" class="thumbnail" >
                                    <img src="${fileName}" width="200" height="100"/>
                                 </g:link>
                            </div>
                            <div class="property-detail" >
                                ${property?.shortDescription}
                                <p class="thumb-readmore-link">
                                    <g:link controller="home" action="propertyDetails" id="${property.id}" class="thumb-readMore" style="color:#852432;">
                                        Read more ..
                                    </g:link>
                                </p>
                            </div>
                        </div>

                    </li>
                </ul>


            </g:each>

            %{--<g:if test="${fileName != '' }">--}%
                 %{--<ul>--}%
                    %{--<li>--}%
                        %{--<img src="${fileName}" width="290" height="150" />--}%
                        %{--<div id="feature-listing-content">--}%
                            %{--<p class="top"></p>--}%
                            %{--<p class="bottom">$789,000--}%

%{--3 Bed, 4 Bath, 4,582 Sq Ft on 0.45 Acres--}%

%{--Property Type: Single Family Home</p>--}%

                        %{--</div>--}%
                    %{--</li>--}%
                %{--</ul>--}%
            %{--</g:if>--}%
        </div>
    </div>
    <div class="clear"></div>
    <script src="https://s3.amazonaws.com/ian-co-images/galleria-1.2.6.min.js"  ></script>
    <script>
    $(function() {

        Galleria.loadTheme('${ g.resource( dir:'themes/classic/', file:'galleria.classic.min.js' )}');
        $("#home-image").galleria({
            width: 630,
            height: 300,
            autoplay: 5000,
            debug: false,
            showInfo: true,
            thumbnails: false
        });
    });
</script>


</body>
</html>