<%@ page import="com.ianandco.Location" %>
<div id="sidebar">
    <h1 class="search-header">Find a Property</h1>
    <ul>
        <li class="${actionName == 'residentialProperties' ? 'currentsub' : ''}"><g:link controller="home"
                                                                                         action="residentialProperties">Residential Properties</g:link></li>
        <li class="${actionName == 'commercialProperties' ? 'currentsub' : ''}"><g:link mapping="comProperty" >Commercial Properties</g:link></li>
        <li><p></p></li>
        <li>
            <g:form controller="home" action="locationProperties">
                <span style="color: #fff; font-weight: bold; font-size: 12px">Search By location</span> <br />
                <g:select name="location" from="${Location?.list()}" value="${location}" optionKey="name" noSelection="['':'-Please select a location-']"/>
                <input type="submit" value="Search">
            </g:form>
        </li>
    </ul>
</div>