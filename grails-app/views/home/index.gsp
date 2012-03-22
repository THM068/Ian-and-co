<%@ page import="com.ianandco.Property" %>
<g:set var="newListing" value="${Property.newListings.list()}" />
<g:set var="editorChoice" value="${Property.findByActiveAndEditorChoice(true,true)}" />
<html>
<head>
    <title>Welcome to Ian and Co - Real Estate</title>
    <meta name="layout" content="main"/>
</head>

<body>
    <div id="main-image-container" class="span-12">
        <div id='home-image'>
            <img src="${resource(dir: 'images', file: 'header_home_img.jpg')}" alt="" />
        </div>
        <div id="homeintro">
            <h1>Start your Search</h1>
            <p>Whether you’re looking to buy a new home or rent/buy a commercial property, we have you covered. Let us help you find your property today.</p>
            <a id="btnleft" href="#">Residential</a>
            <a id="btnright" href="#">Commercial</a>
        </div>
    </div>

    <div id="home-body">
        <div id="home-welcome">
            <h5>We offer a full line of Real Estate Services</h5>

            <p>
                Can you provide the copy of the text to display in this paragraph
            </p>

            <p>
                Suspendisse potenti. Aenean sem justo, mollis sed, malesuada vitae, viverra eu, metus. Aliquam massa justo, rutrum at, tincidunt vel, bibendum vitae, quam. Aliquam nec ante.
            </p>
        </div>
        <div id="new-listings">
            <p></p>
            <em>NEW LISTINGS</em>
            <hr>
            <g:if test="${newListing.size() > 0}">
                <ul>
                    <g:each in="${newListing}" var="property">
                        <li>
                            <img src="${property?.photos[0]?.fileName}" height="30" height="30">
                            Title: ${property?.title}
                        </li>
                    </g:each>
                </ul>
            </g:if>
        </div>
        <div id="feature-listing">
            <p></p>
            <em>FEATURED LISTINGS</em>
            <hr>
            <g:set var="fileName" value="${editorChoice?.photos ? editorChoice?.photos[0]?.fileName : ''}" />
            <g:if test="${fileName != '' }">
                 <ul>
                    <li>
                        <img src="${fileName}" />
                    </li>
                </ul>
            </g:if>
        </div>
    </div>
    <div class="clear"></div>

</body>
</html>