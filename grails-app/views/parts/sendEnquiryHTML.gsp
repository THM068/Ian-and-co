<html>
  <head><title>Simple GSP page</title></head>
  <body>

  Dear Sir/Madam
  <p>
      Name: ${name} <br/>
      E-mail: ${email}<br/>
      Tel : ${telephone} <br/>
      <g:if test="${property}">
          An enquiry has been made for property: <a href="http://www.ianandco.com/home/propertyDetails/${property?.id}">${property?.title}</a>
      </g:if>
      <p>
      ${message}
      </p>

  </p>
  </body>
</html>