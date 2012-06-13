Name : ${name}
E-mail: ${email}
Tel: ${telephone}
<g:if test="${property}">
    An enquiry has been made for property: <a href="http://www.ianandco.com/home/propertyDetails/${property?.id}">${property?.title}</a>
</g:if>

Messsage:
${message}

