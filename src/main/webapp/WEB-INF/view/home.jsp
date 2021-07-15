<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
	
	<!--  Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
		<input type="submit" value="Logout" />
		
	</form:form>
</body>

</html>