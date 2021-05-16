<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/css/my-login.css">
<body>
	<jsp:include page="navbarlogin.jsp"></jsp:include>

	<!-- Main Content -->

	<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
						<form:form action="loginaction" method="POST" modelAttribute="compte">				   
							<div class="error marginBottom10"><c:if test="${loginerror == true}"><spring:message	code="loginerror" /></c:if></div>
							<br>
							    <div class="form-floating marginBottom10">
							      <form:input path="login" type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
							      <label for="floatingInput"><spring:message	code="label.userName" /></label>
							    </div>
							    <div class="form-floating">
							      <form:input path="password"  type="password" class="form-control" id="floatingPassword" placeholder="Password"/>
							      <label for="floatingPassword"><spring:message	code="label.password" /></label>
							    </div>
							<br>
							    <div class="checkbox mb-3">
							      <label>
							        <input type="checkbox" value="remember-me"> <spring:message	code="label.rememberme" />
							      </label>
							    </div>
							    <button class="w-100 btn btn-lg btn-primary" type="submit"><spring:message	code="label.loginbutton" /></button>
							 
							  </form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/my-login.js"></script>
	

	<!-- Footer -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>