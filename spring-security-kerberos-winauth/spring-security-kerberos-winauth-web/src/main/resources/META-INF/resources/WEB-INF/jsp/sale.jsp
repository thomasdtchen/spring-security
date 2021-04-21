<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
      <h1>This is secured!</h1>
      <h2>
        I'm a seller.
      </h2>
      <h3>
	     I have SALE access!
      </h3>
    </div>
  </body>
</html>