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
        Welcome ${pageContext.request.userPrincipal.name} 
      </h2>
      <h3>
          <a href="/sale">sale</a>
          <br/><br/>
	      <sec:authorize access="hasRole('ADMIN')">
	    	<a href="/admin">ADMIN</a>
		   </sec:authorize>
		   <br/><br/>
		   <sec:authorize access="hasRole('USER')">
	    		<a href="/user/index">USER</a>
		   </sec:authorize>
		    <br/> <br/>
   		   <sec:authorize access="hasRole('STOCK-USERS')">
	    		<a href="#">Stock Users</a>
		   </sec:authorize>
		    <br/><br/>
		    <sec:authorize access="hasRole('STOCK-ADMIN')">
	    		<a href="#">Stock ADMIN</a>
		   </sec:authorize>
		    <br/><br/>
		    
      </h3>
      
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2><a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>
    <%-- 
      <c:url var="logoutUrl" value="/logout"/>
      <a href="/logout">Log out</a>
      <!--  
      <form class="form-inline" action="${logoutUrl}" method="post">
          <input type="submit" value="Log out" />
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      </form>
      -->
       <h2><a href="javascript:formSubmit()">Logout</a></h2>
    <!-- csrf for logout-->
    <form action="/logout" method="post" id="logoutForm">
        <input type="hidden" th:name="${_csrf.parameterName}" th:value="${_csrf.token}" />
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>
    --%>
    </div>
  </body>
</html>