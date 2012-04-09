<div id="sidebar">
    <h1 class="search-header">Find a Property</h1>
    <ul>
        <li class="${actionName == 'residentialProperties' ? 'currentsub' : ''}"><g:link controller="home"
                                                                                         action="residentialProperties">Residential Properties</g:link></li>
        <li class="${actionName == 'commercialProperties' ? 'currentsub' : ''}"><g:link mapping="comProperty" >Commercial Properties</g:link></li>
    </ul>
</div>