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
	
	<hr>
	
	<!--  Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
		<input type="submit" value="Logout" />
		
	</form:form>
</body>

</html>