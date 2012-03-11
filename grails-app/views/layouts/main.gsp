<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <r:use modules="app" />
        <r:use modules="main-app" />
        <r:layoutResources />
        <g:layoutHead />
    </head>
    <body>
        <div class="container">
            <g:render template="../parts/header" />
            <r:layoutResources />
            <g:layoutBody />
            <g:render template="../parts/footer" />
        </div>
    </body>
</html>