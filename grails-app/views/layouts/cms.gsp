<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Welcome to Ian and Co CMS Application</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <r:use modules="app" />
    <r:use modules="cms" />
    <r:require module="jquery-ui"/>
    <r:layoutResources />
    <g:layoutHead />

    <less:scripts />

  </head>

  <body>

      <div class="navbar navbar-fixed-top">
          <div class="navbar-inner">
              <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                  </a>
                  <a class="brand" href="#">Ian & Co</a>
                  <div class="nav-collapse">
                      <ul class="nav">
                          <li class="active"><a href="#">Home</a></li>
                          <li class="dropdown">
                              <a href="#property" class="dropdown-toggle" data-toggle="dropdown">
                                  Property
                                  <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                  <li>
                                      <g:link controller="property" action="create">Create</g:link>
                                      <g:link controller="property" action="list">List</g:link>
                                  </li>
                              </ul>
                          </li>
                          <li class="dropdown">
                              <a href="#contact" class="dropdown-toggle" data-toggle="dropdown">
                                  Photos
                                  <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                  <li>
                                      <a href="#">Create</a>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </div><!--/.nav-collapse -->
            </div>
          </div>
      </div>

    <div class="container">
        <r:layoutResources />
        <g:layoutBody />
    </div> <!-- /container -->
  </body>
</html>
