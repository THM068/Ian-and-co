<%@ page import="com.ianandco.Property" %>
<html>
  <head>
      <title>Welcome to Ian and Co - Real Estate</title>
      <meta name="layout" content="main" />
  </head>
  <body>
      <div class="container">
          IAN and CO Real Estate   &nbsp;&nbsp;<g:link controller="property" action="list">Go to Content Management System</g:link>
          <g:if  test="${Property.list().size() > 0}">
              <g:each in="${Property.list()}" var="property">
                  <ul>
                      <li>
                          ${property.title}<br/>
                          <g:each in="${property.photos}" var="photo">
                              <img src="${photo.fileName}" width="200" height="200">
                          </g:each>
                      </li>
                  </ul>

              </g:each>
          </g:if>

      </div>
  </body>
</html>