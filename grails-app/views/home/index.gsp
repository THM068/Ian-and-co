<%@ page import="com.ianandco.TigerBox; com.ianandco.Page; com.ianandco.Property" %>
<g:set var="tigerBox" value="${TigerBox.findByPage(Page.HOME)}" />

<html>
<head>
    <title>Welcome to Ian and Co - Real Estate</title>
    <meta name="layout" content="main"/>

</head>

<body>
    <div id="main-image-container" class="span-12">
        <div id='home-image'>
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
            <h5>We offer a full line of Real Estate Services</h5>

            <p>
                Can you provide the copy of the text to display in this paragraph
            </p>

        </div>
        <div id="new-listings">
            <p></p>
            <h2>NEW LISTINGS</h2>
            <hr>
            <g:if test="${newListing.size() > 0}">
                <ul>
                    <g:each in="${newListing}" var="property">
                        <li>
                            <img src="${property?.photos[0]?.fileName}" height="30" height="30">
                            <div class="new-listing-content">
                                <p>${property?.title}</p>
                                <p>Price</p>
                                <p>Bath room</p>
                            </div>
                            <div class="clear"></div>
                        </li>
                    </g:each>
                </ul>
            </g:if>
        </div>
        <div id="feature-listing">
            <p></p>
            <h2>FEATURED LISTINGS</h2>
            <hr>
            <g:set var="fileName" value="${editorChoice?.photos ? editorChoice?.photos[0]?.fileName : ''}" />
            <g:if test="${fileName != '' }">
                 <ul>
                    <li>
                        <img src="${fileName}" width="290" height="150" />
                        <div id="feature-listing-content">
                            <p class="top"></p>
                            <p class="bottom">$789,000

3 Bed, 4 Bath, 4,582 Sq Ft on 0.45 Acres

Property Type: Single Family Home</p>

                        </div>
                    </li>
                </ul>
            </g:if>
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