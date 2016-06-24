<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Login</h1>

	<div id="login-error">${error}</div>

<!-- 
action="../../j_spring_security_check" method="post"
<form method="post" >

<c:url var="loginUrl" value="/auth/login"/> 
<form action="${loginUrl}" method="post" >
 -->
<!-- 
<form method="post" >
<p>
	<label for="j_username">Username</label>
	<input id="j_username" name="j_username" type="text" />
</p>
<p>
	<label for="j_password">Password</label>
	<input id="j_password" name="j_password" type="password" />
</p>
<input  type="submit" value="Login"/>
</form>
 -->



	<c:if test="${param.error != null}">
		<p>Invalid username / password</p>
	</c:if>
	<c:url var="loginUrl" value="/krams/auth/login" />
	<form action="${loginUrl}" method="post">

		<p>
			<label for="j_username">User:</label>
		</p>
		<input type="text" id="j_username" name="j_username" />

		<p>
			<label for="j_password">Password:</label>
		</p>
		<input type="password" id="j_password" name="j_password">

		<div>
			<input name="submit" type="submit" />
		</div>
	</form>

</body>
</html>