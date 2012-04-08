<%@ page import="com.ianandco.Location; org.grails.taggable.Tag" %>
<html>
  <head>
      <title>Create a Neighbourhood</title>
      <meta name="layout" content="cms" />
  </head>

  <body>
  <div class="nav">
      <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
      </span>
      <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                            /></g:link></span>
  </div>

  <div class="body">
      <h1>Create a location</h1> <br/>
      <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
      </g:if>
      <g:if test="${flash.error}">
          <div class="errors">
              ${flash.error}
          </div>
      </g:if>
      <g:form controller="location" action="addLocation" method="POST">
          <label><h4>Name</h4></label>
          <g:textField name="name"  value="${locationInstance.name}" style="width: 400px"/>
          <g:submitButton name="submit" value="Submit"/>
      </g:form>
      <table class="table table-striped">
          <tr>
              <thead>
                  <th>Name</th>
              </thead>
          </tr>

          <g:each in="${Location?.list()}" var="location">
              <tr>
                  <td width=150>${location?.name} &nbsp;  </td>
                  <td><g:link controller="location" action="delete" id="${location.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link></td>
              </tr>
          </g:each>

      </table>
  </div>
</body>
</html>