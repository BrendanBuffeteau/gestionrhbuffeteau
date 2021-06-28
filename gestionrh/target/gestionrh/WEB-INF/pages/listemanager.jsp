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
		<h1 class="titre"><spring:message code="navbar.managerlist" /></h1>
		<table id="employesTable" class="table table-striped"
			style="width: 100%">
			<thead>
				<tr>
					<th><spring:message code="emp.firstname" /><span> </span>
					<spring:message code="emp.lastname" /></th>
					<th><spring:message code="emp.startdate" /></th>
					<th><spring:message code="emp.enddate" /></th>
					<th><spring:message code="emp.dept" /></th>
					<th><spring:message code="emp.title" /></th>
					<th><spring:message code="emp.superior" /></th>
				
					
				</tr>
			</thead>
			<c:if test="${not empty managers}">
				<c:forEach items="${managers}" var="employee">
					<tr id="tr-id-1" class="tr-class-1" data-title="bootstrap table"
						data-object='{"key": "value"}'>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.firstName} ${employee.lastName}</a></td>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.startDate}</a></td>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.endDate}</a></td>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.department.name}</a></td>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.title}</a></td>
						<td><a style="color:black"class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/listesub?idmanager=${employee.empId}">${employee.manager.firstName}
							${employee.manager.lastName}</a></td>

					</tr>
				</c:forEach>
			</c:if>
		</table>

		<form action="getaddemployee">
			<div class="form-group">
				<br> <input type="submit" name="submit"
					class="btn btn-secondary btn-lg marginBottom10"
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