<html>
  <head>
      <title>Find Properties by location</title>
      <meta content="main" name="layout">
  </head>
  <body>
  <div id="listingwrap">
      <g:render template="../parts/sidebar"/>
      <g:if test="${propertyInstanceList?.size() > 0}">
          <g:render template="../parts/searchResult" collection="${propertyInstanceList}" var="property" />
      </g:if>
      <g:else>
          <div class="message">Sorry, there are no properties for the selected location at the moment.</div>
      </g:else>
      <div class="clear"></div>

      <div class="paginate">
          <g:paginate controller="home" action="locationProperties" total="${propertyInstanceTotal}"/>
      </div>
  </div>
  </body>
</html>