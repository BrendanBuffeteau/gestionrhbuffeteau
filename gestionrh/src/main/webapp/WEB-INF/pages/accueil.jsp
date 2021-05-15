<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>

		<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<h3><spring:message code="label.title" /></h3>
		${compte.login }
	</div>
	<footer class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>