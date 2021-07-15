<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Custome Login Page</title>
</head>

<body>

<h3>My Custom Login Page</h3>
	
	<form:form action="${PageContext.request.contextPath}/authenticateTheUser"
			   method="POST">
			   
		<p>
			User name: <input type="text" name="username" />
		</p>
		
		<p>
			Password: <input type="password" name="password" />
		</p>		
			   
	</form:form>


</body>

</html>