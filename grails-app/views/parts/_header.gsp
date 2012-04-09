<div id="header" >
    <div id="logo">
        <img src="${resource(dir:'images', file:'logo.jpg')}" />
    </div>
    <div class="clear"></div>
    <div id="header-nav">
        <ul class="nav nav-pills">
            <li class="${actionName == 'index'? 'active':''}">
                <g:link uri="/">Home</g:link>
            </li>
            <li class="${actionName == 'residentialProperties'? 'active':''}">
                <g:link mapping="resProperty">Residential properties</g:link>
            </li>
            <li class="${actionName == 'commercialProperties'? 'active':''}">
                <g:link mapping="comProperty" >Commercial</g:link>
            </li>
            <li class="${actionName == 'aboutUs'? 'active':''}">
                <g:link mapping="aboutUs">About Us</g:link>
            </li>
            <li class="${actionName == 'contactUs'? 'active':''}">
                <g:link mapping="contactUs">Contact us</g:link>
            </li>
            <li>
                <g:link controller="property" action="list">Admin</g:link>
            </li>
        </ul>
    </div>
    <div class="clear"></div>
    <div id="address-bar" >
        <p>
            Browse Online or Call Us on - (+2639) 886626 (+2639) 886256
        </p>
    </div>
    <div class="clear"></div>
</div>
