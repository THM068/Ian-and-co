<html>
  <head><title>Simple GSP page</title></head>
  <body>

  Dear Sir/Madam
  <p>
      Name: ${name} <br/>
      E-mail: ${email}<br/>
      Tel : ${telephone} <br/>
      <g:if test="${property}">
          Property id: ${property?.id}
      </g:if>
      <p>
      ${message}
      </p>

  </p>
  </body>
</html>