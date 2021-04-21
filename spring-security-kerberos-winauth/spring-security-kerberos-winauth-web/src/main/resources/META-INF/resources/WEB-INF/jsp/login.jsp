<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
    xmlns:c="http://java.sun.com/jsp/jstl/core" version="2.0">

  <jsp:directive.page contentType="text/html" pageEncoding="UTF-8" />
  <jsp:output omit-xml-declaration="true" />
  <jsp:output doctype-root-element="HTML"
              doctype-system="about:legacy-compat" />
<html lang="en">
  <head>
    <title>Hello Security</title>
    <c:url var="faviconUrl" value="/img/favicon.ico"/>
    <link rel="icon" type="image/x-icon" href="${faviconUrl}"/>
    <c:url var="bootstrapUrl" value="/css/bootstrap.css"/>
    <link href="${bootstrapUrl}" rel="stylesheet"></link>
    <c:url var="bootstrapResponsiveUrl" value="/css/bootstrap-responsive.css"/>
    <link href="${bootstrapResponsiveUrl}" rel="stylesheet"></link>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="container">
      <form method="POST" action="/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group">
			<c:if test="${loginError}">
				<h3><span style="color:red;"> Incorrect UserName or Password</span></h3>
			</c:if>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>

        </div>

    </form>
    </div>
  </body>
</html>
</jsp:root>