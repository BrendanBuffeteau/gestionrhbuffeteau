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
		<h1 class="titre">
			<spring:message code="navbar.param" />
		</h1>
		<div class="table-customerlist">
			<table data-toggle="table" data-search="true"
				data-show-columns="true" class="display">
				<thead class="thead-dark">
					<tr class="tr-class-1">
						<th data-field="emp_id">Id</th>
						<th data-field="first_name"><spring:message
								code="emp.firstname" /></th>
						<th data-field="last_name"><spring:message
								code="emp.lastname" /></th>
						<th data-field="start_date"><spring:message
								code="emp.startdate" /></th>
						<th data-field="end_date"><spring:message code="emp.enddate" /></th>
						<th data-field="title"><spring:message code="emp.title" /></th>
						<th data-field="superior_emp_id"><spring:message
								code="emp.superior" /></th>
						<th><spring:message code="edit.delete" /></th>
					</tr>
				</thead>
				<%-- 				<c:if test="${not empty customers}"> --%>
				<%-- 					<c:forEach items="${customers}" var="customer"> --%>
				<tr id="tr-id-1" class="tr-class-1" data-title="bootstrap table"
					data-object='{"key": "value"}'>
					<td data-value="employee.emp_id">EMPLOYEE ID</td>
					<td data-value="employee.first_name">EMPLOYEE ID</td>
					<td data-value="employee.last_name">EMPLOYEE ID</td>
					<td data-value="employee.start_date">EMPLOYEE ID</td>
					<td data-value="employee.end_date">EMPLOYEE ID</td>
					<td data-value="employee.title">EMPLOYEE ID</td>
					<td data-value="employee.superior_emp_id"><form:select
							path="domainsList">
							<form:options items="${1,2,3}" />
						</form:select></td>
					<td data-value=>

						<form action="listecustomer" method="post">
							<input type="hidden" name="custid" value="customer.custId">
							<button name="update" class="btn btn-primary" type="submit"
								value="update">Edition</button>
							<button
								onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce client ? ID : customer.custId')"
								name="delete" class="btn btn-danger" type="submit"
								value="delete">Suppression</button>
						</form> <!-- 									<form> --> <%-- 									<input type="hidden" id="customerid" value="${customer.custId}"> --%>
						<!-- 									<input type="hidden" id="customeraddress" --> <%-- 										value="${customer.address}"> <input type="hidden" --%>
						<%-- 										id="customercity" value="${customer.city}"> <input --%>
						<%-- 										type="hidden" id="customerstate" value="${customer.state}"> --%>
						<!-- 									<a href="#myModal" class="btn btn-danger delete" -->
						<!-- 										class="trigger-btn" data-toggle="modal">Suppression</a> -->
						<!-- 								</form> -->
					</td>
				</tr>

			</table>
		</div>

		<div class="boutons-liste">
			<form action="savecustomer">
				<div class="form-group">
					<br> <input type="submit" name="submit"
						class="btn btn-secondary btn-lg" value="Ajouter un Customer">
				</div>
			</form>
		</div>
	</div>

		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>