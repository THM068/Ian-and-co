<%@ page import="org.grails.taggable.Tag" %>
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
      <h1>Create a neighbourhood</h1> <br/>
      <form action="">
          <label><h4>Name</h4></label>
          <g:textField name="name"  value="${tagInstance.name}" style="width: 400px"/>
          <g:submitButton name="submit" value="Submit"/>
      </form>
      %{--<table>--}%
          %{--<tr>--}%
              %{--<thead>--}%
                  %{--<th>Name</th>--}%
              %{--</thead>--}%
          %{--</tr>--}%
          %{--<tbody>--}%
              %{--<g:each in="${Tag?.list()}" var="tag">--}%
                  %{--<tr>--}%
                      %{--<td>${tag?.name}</td>--}%
                  %{--</tr>--}%
              %{--</g:each>--}%
          %{--</tbody>--}%
      %{--</table>--}%
  </div>
</body>
</html>