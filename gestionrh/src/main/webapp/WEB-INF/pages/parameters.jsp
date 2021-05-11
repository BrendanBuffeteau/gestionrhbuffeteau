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
		<h1 class="titre">Parameters</h1>
		<form:form method="post" action="saveparam"
			modelAttribute="employeesParam">
			<table id="employesTable" class="table table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th>No.</th>
						<th><spring:message code="emp.firstname" /><span> </span> <spring:message
								code="emp.lastname" /></th>
						<th><spring:message code="emp.startdate" /></th>
						<th><spring:message code="emp.title" /></th>
						<th><spring:message code="emp.superior" /></th>
						<th><spring:message code="edit.delete" /></th>
					</tr>
				</thead>
				<c:if test="${not empty employeesParam.employeesparam}">
					<c:forEach items="${employeesParam.employeesparam}" var="employee"
						varStatus="status">
						<tr id="tr-id-1" class="tr-class-1" data-title="bootstrap table"
							data-object='{"key": "value"}'>
							<td>${status.count} ${status.index}</td>
							<td>${employee.firstName} ${employee.lastName}</td>
							<td>${employee.startDate}</td>
							<td>${employee.title}</td>
							<td>
							<form:select path="employeesparam" class="form-select marginBottom10" multiple="false"
								aria-label="Default select example">
									<c:if test="${not empty managers}">
										<c:forEach items="${managers}" var="manager">
											<form:option  value="${manager}">${manager.firstName}
												${manager.lastName}</form:option>
										</c:forEach>
									</c:if>
									<input type="hidden" name="employeesparam[${status.index}].manager"
									value="${idmanager}" />
							</form:select>
</td>
							<td data-value=>
								<form action="listecustomer" method="post">
									<input type="hidden" name="custid" value="customer.custId">
									<button name="update" class="btn btn-primary" type="submit"
										value="update">Edition</button>
									<button
										onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce client ? ID : ${employee.empId}')"
										name="delete" class="btn btn-danger" type="submit"
										value="delete">Suppression</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<input type="submit" value="Save" />
		</form:form>
		<form action="getaddemployee" method="get">
			<div class="form-group">
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