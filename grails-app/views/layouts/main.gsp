<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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