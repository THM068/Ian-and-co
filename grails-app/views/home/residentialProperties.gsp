<html>
  <head>
      <title>Residential Properties</title>
      <meta content="main" name="layout">
  </head>
  <body>
  <div id="listingwrap">
      <g:render template="../parts/sidebar" />
      <g:if test="${propertyInstanceList?.size() > 0}">
          <g:render template="../parts/searchResult" collection="${propertyInstanceList}" var="property" />
      </g:if>
      <g:else>
          <div class="message"> Sorry, there are no residential properties at the moment.</div>
      </g:else>
      <div class="clear"></div>

      <div class="paginate">
          <g:paginate controller="home" action="residentialProperties" total="${propertyInstanceTotal}"/>
      </div>
  </div>
  </body>
</html>