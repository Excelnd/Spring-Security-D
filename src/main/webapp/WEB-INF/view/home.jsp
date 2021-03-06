<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>
	<title>Ihs2code Company Home Page</title>
</head>

<body>
	<h2>Ihs2code Company Home Page YOHoo</h2>
	<hr>
	
	<p>
	Welcome to the Ihs2code Company Home Page!
	</p>
	
	<hr>
	
	<!--  display user name and role -->
	
	<p>		
		User: <security:authentication property="principal.username" />
		<br><br>
		Role (s) : <security:authentication property="principal.authorities" />	
	</p>
	
	
	
	<security:authorize access="hasRole('MANAGER')">
	
	<!--  Add a link to point to /leaders ... this is for managers  -->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Manager Peeps)
	</p>
	
	</security:authorize>



	<security:authorize access="hasRole('ADMIN')">
	
	<!--  Add a link to point to /systems ... this is for admins  -->
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin Peeps)
	</p>	
	
	</security:authorize>	
	
	
	<hr>
	
	<!--  Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
		<input type="submit" value="Logout" />
		
	</form:form>
</body>

</html>