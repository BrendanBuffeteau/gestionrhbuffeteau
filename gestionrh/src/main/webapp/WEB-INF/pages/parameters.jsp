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
		<h1 class="titre"><spring:message code="navbar.param" /></h1>
		<form:form method="post" action="saveparam"
			modelAttribute="employeeswochiefdto">
			<table id="employesTable" class="table table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th>No.</th>
						<th>id</th>
						<th><spring:message code="emp.firstname" /><span> </span> <spring:message
								code="emp.lastname" /></th>
						<th><spring:message code="emp.startdate" /></th>
						
						<th><spring:message code="emp.title" /></th>
						<th><spring:message code="emp.superior" /></th>
					
					</tr>
				</thead>
				<c:if test="${not empty employeeswochiefdto.listempwochief}">
					<c:forEach items="${employeeswochiefdto.listempwochief}" var="employeedto"
						varStatus="status">
						<tr id="tr-id-1" class="tr-class-1" data-title="bootstrap table"
							data-object='{"key": "value"}'>
							<td>${status.count}</td>
							<td>${employeedto.empId}</td>
							<td>${employeedto.firstName} ${employeedto.lastName}</td>
							<td>${employeedto.startDate}</td>
							<td>${employeedto.title}</td>
							<td>
							<form:input type="hidden" path="listempwochief[${status.index}].empId" value="${employeedto.empId}" />
							<form:select  path="listempwochief[${status.index}].manager" class="form-select marginBottom10" multiple=""
								aria-label="Default select example">
									<form:option value="">-- <spring:message	code="managerchoice" /> --</form:option>
									<c:if test="${not empty managers}">
										<c:forEach items="${managers}" var="manager">
											<form:option value="${manager.empId}">${manager.firstName}
												${manager.lastName}</form:option>
										</c:forEach>
									</c:if>
							</form:select>
							</td>
							
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<input type="submit" class="btn btn-secondary btn-lg marginBottom10" value="<spring:message code="save.managers" />" />
		</form:form>
		
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('#employesTable').DataTable();
	});
</script>
</html>