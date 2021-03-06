<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<h1 class="titre"><spring:message code="navbar.employeelist" /></h1>
		<table id="employesTable" class="table table-striped"
			style="width: 100%">
			<thead>
				<tr>
					<th><spring:message code="emp.firstname" /><span> </span>
					<spring:message code="emp.lastname" /></th>
					<th><spring:message code="emp.startdate" /></th>
					<th><spring:message code="emp.dept" /></th>
					<th><spring:message code="emp.title" /></th>
					<th><spring:message code="emp.superior" /></th>
					<th><spring:message code="edit.delete" /></th>
				</tr>
			</thead>
			<c:if test="${not empty employees}">
				<c:forEach items="${employees}" var="employee">
					<tr id="tr-id-1" class="tr-class-1" data-title="bootstrap table"
						data-object='{"key": "value"}'>
						<td>${employee.firstName} ${employee.lastName}</td>
						<td>${employee.startDate}</td>
						<td>${employee.department.name}</td>
						<td>${employee.title}</td>
						<td>${employee.manager.firstName}
							${employee.manager.lastName}</td>
						<td data-value=>							
									<a  class="btn btn-primary" type="submit" 
									href="${pageContext.request.contextPath}/editemployee?empId=${employee.empId}">
									<spring:message	code="edit" /></a>
								
									<a href="${pageContext.request.contextPath}/deleteemployeeliste?empId=${employee.empId}"
										onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet employé ? : ${employee.firstName} ${employee.lastName}')"
										 class="btn btn-danger" type="submit"
										><spring:message	code="delete" /></a>
					
						</td>
					</tr>

				</c:forEach>
			</c:if>
		</table>

		<form action="getaddemployee" method="get">
			<div class="form-group marginBottom10">
				<br> <input type="submit" name="submit"
					class="btn btn-secondary btn-lg"
					value="<spring:message	code="add.emp" />">
			</div>
		</form>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#employesTable').DataTable();
	});
</script>
</html>