<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/css/my-login.css">
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- Main Content -->
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Add Employee</h4>
							<form:form action="addemployee" method="POST"
								modelAttribute="employee">
								<div class="form-floating marginBottom10">
									<form:input path="firstName" type="text" class="form-control"
										id="floatingInput" />
									<label for="floatingInput">firstName</label>
								</div>
								<div class="form-floating marginBottom10">
									<form:input path="lastName" type="text" class="form-control"
										id="floatingPassword" />
									<label for="floatingPassword">lastName</label>
								</div>
								<div class="form-floating marginBottom10">
									<form:input path="startDate" type="date" class="form-control"
								id="floatingPassword" /> 
									<label for="floatingPassword">startDate</label>
								</div>

								<div class="form-floating marginBottom10">
									<form:input path="title" type="text" class="form-control"
										id="floatingPassword" />
									<label for="floatingPassword">title</label>
								</div>
								<form:select path="manager" class="form-select marginBottom10"
									aria-label="Default select example">
									<form:option value="" label="Aucun manager"></form:option>
									<c:forEach items="${employees}" var="employee">
										<form:option var="idmanager" value="${employee.empId}">${employee.firstName}
											${employee.lastName}</form:option>
									</c:forEach>
								</form:select>

								<div>
									<button class="w-100 btn btn-lg btn-primary" type="submit">Enregistrer</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>