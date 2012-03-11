<%@ page import="com.ianandco.Property" %>
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
            <p>Whether you’re looking to buy a new home or rent/but a commercial property, we have you covered. Let us help you find your property today.</p>
            <a id="btnleft" href="#">Residential</a>
            <a id="btnright" href="#">Commercial</a>
        </div>


    </div>
    %{--<g:if test="${Property.list().size() > 0}">--}%
        %{--<g:each in="${Property.list()}" var="property">--}%
            %{--<ul>--}%
                %{--<li>--}%
                    %{--${property.title}<br/>--}%
                    %{--<g:each in="${property.photos}" var="photo">--}%
                        %{--<img src="${photo.fileName}" width="200" height="200">--}%
                    %{--</g:each>--}%
                %{--</li>--}%
            %{--</ul>--}%

        %{--</g:each>--}%
    %{--</g:if>--}%

</body>
</html>