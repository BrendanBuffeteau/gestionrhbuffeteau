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
							<h4 class="card-title"><spring:message	code="edit.emp" /></h4>
							<form:form action="editemployeepost" method="POST"
								modelAttribute="employee">
								<form:input path="empId" hidden="true"/>
								<div class="form-floating marginBottom10">
									<form:input path="firstName" type="text" class="form-control"
										id="floatingInput" value="${firstName}" />
									<label for="floatingInput"><spring:message	code="emp.firstname" /></label>
								</div>
								<div class="form-floating marginBottom10">
									<form:input path="lastName" type="text" class="form-control"
										id="floatingPassword" value="${lastName}"/>
									<label for="floatingPassword"><spring:message	code="emp.lastname" /></label>
								</div>
								<div class="form-floating marginBottom10">
									<form:input path="startDate" type="date" class="form-control"
								id="floatingPassword" value="${startDate}" /> 
									<label for="floatingPassword"><spring:message	code="emp.startdate" /></label>
								</div>
								<div class="form-floating marginBottom10">
									<form:input path="endDate" type="date" class="form-control"
								id="floatingPassword" value="${endDate}" /> 
									<label for="floatingPassword"><spring:message	code="emp.enddate" /></label>
								</div>
								<spring:message	code="emp.title" />
									<form:select path="title" class="form-select marginBottom10"
									aria-label="Default select example">
										<form:option value="President">President</form:option>
										<form:option value="Vice President">Vice President</form:option>
										<form:option value="Treasurer">Treasurer</form:option>
										<form:option value="Operations Manager">Operations Manager</form:option>
											<form:option value="Loan Manager">Loan Manager</form:option>
										<form:option value="Head Teller">Head Teller</form:option>
										<form:option value="Teller">Teller</form:option>
								</form:select>
								<spring:message	code="emp.dept" />
								<form:select path="department" class="form-select marginBottom10"
									aria-label="Default select example">
									<c:forEach items="${departments}" var="department">
										<form:option  value="${department.deptId}" > ${department.name} </form:option>
									</c:forEach>
								</form:select>
								<spring:message	code="emp.superior" />
								<form:select path="manager" class="form-select marginBottom10"
									aria-label="Default select example">
								<form:option value="">-- <spring:message	code="managerchoice" /> --</form:option>
									<c:forEach items="${managers}" var="employee">
										<form:option var="idmanager" value="${employee.empId}">${employee.firstName}
											${employee.lastName}</form:option>
									</c:forEach>
								</form:select>

								<div>
									<button class="w-100 btn btn-lg btn-primary" type="submit"><spring:message	code="save" /></button>
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