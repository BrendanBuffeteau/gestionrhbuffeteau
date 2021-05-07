<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<!-- <head> -->
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${pageContext.request.contextPath}/styles/css/footer.css"> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${pageContext.request.contextPath}/styles/css/navbar.css"> --%>
<!-- <meta charset="UTF-8"> -->
<!-- <!-- Responsive META --> 
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <title>Liste Employee</title> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" -->
<!-- 	crossorigin="anonymous"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
<!-- <link -->
<!-- 	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <link -->
<!-- 	href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <meta name="viewport" -->
<!-- 	content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
<!-- <!-- <title>Bootstrap Delete Confirmation Modal</title> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> -->

<!-- <link -->
<!-- 	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" id="bootstrap-css"> -->
<!-- <script -->
<!-- 	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- <script -->
<!-- 	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->


<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" -->
<!-- 	crossorigin="anonymous"> -->
<!-- <script -->
<!-- 	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" -->
<!-- 	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" -->
<!-- 	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" -->
<!-- 	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <link -->
<!-- 	href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <script -->
<!-- 	src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!-- </head> -->
<body>

		<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<h1 class="titre">Liste Employee</h1>
		<div class="table-customerlist">
			<table data-toggle="table" data-search="true"
				data-show-columns="true" class="display">
				<thead class="thead-dark">
					<tr class="tr-class-1">
						<th data-field="emp_id">Id</th>
						<th data-field="first_name"><spring:message	code="emp.firstname" /></th>
						<th data-field="last_name"><spring:message	code="emp.lastname" /></th>
						<th data-field="start_date"><spring:message	code="emp.startdate" /></th>
						<th data-field="end_date"><spring:message	code="emp.enddate" /></th>
						<th data-field="title"><spring:message	code="emp.title" /></th>
						<th data-field="superior_emp_id"><spring:message	code="emp.superior" /></th>
						<th><spring:message	code="edit.delete" /></th>
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
					<td data-value="employee.superior_emp_id">EMPLOYEE ID</td>
					<td data-value=>

						<form action="listecustomer" method="post">
							<input type="hidden" name="custid" value="customer.custId">
							<button name="update" class="btn btn-primary" type="submit"
								value="update">Edition</button>
							<button
								onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce client ? ID : customer.custId')"
								name="delete" class="btn btn-danger" type="submit"
								value="delete">Suppression</button>
						</form>
						 <!-- 									<form> --> <%-- 									<input type="hidden" id="customerid" value="${customer.custId}"> --%>
						<!-- 									<input type="hidden" id="customeraddress" --> <%-- 										value="${customer.address}"> <input type="hidden" --%>
						<%-- 										id="customercity" value="${customer.city}"> <input --%>
						<%-- 										type="hidden" id="customerstate" value="${customer.state}"> --%>
						<!-- 									<a href="#myModal" class="btn btn-danger delete" -->
						<!-- 										class="trigger-btn" data-toggle="modal">Suppression</a> -->
						<!-- 								</form> -->
					</td>
				</tr>

			</table>
			<table id="employesTable" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
                        <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            
            <tr>
                <td>Charde Marshall</td>
                <td>Regional Director</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                <td>$470,600</td>
            </tr>
            <tr>
                <td>Haley Kennedy</td>
                <td>Senior Marketing Designer</td>
                <td>London</td>
                <td>43</td>
                <td>2012/12/18</td>
                <td>$313,500</td>
            </tr>
            <tr>
                <td>Tatyana Fitzpatrick</td>
                <td>Regional Director</td>
                <td>London</td>
                <td>19</td>
                <td>2010/03/17</td>
                <td>$385,750</td>
            </tr>
            <tr>
                <td>Michael Silva</td>
                <td>Marketing Designer</td>
                <td>London</td>
                <td>66</td>
                <td>2012/11/27</td>
                <td>$198,500</td>
            </tr>
                        <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            
            <tr>
                <td>Charde Marshall</td>
                <td>Regional Director</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                <td>$470,600</td>
            </tr>
            <tr>
                <td>Haley Kennedy</td>
                <td>Senior Marketing Designer</td>
                <td>London</td>
                <td>43</td>
                <td>2012/12/18</td>
                <td>$313,500</td>
            </tr>
            <tr>
                <td>Tatyana Fitzpatrick</td>
                <td>Regional Director</td>
                <td>London</td>
                <td>19</td>
                <td>2010/03/17</td>
                <td>$385,750</td>
            </tr>
            <tr>
                <td>Michael Silva</td>
                <td>Marketing Designer</td>
                <td>London</td>
                <td>66</td>
                <td>2012/11/27</td>
                <td>$198,500</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            
            <tr>
                <td>Charde Marshall</td>
                <td>Regional Director</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                <td>$470,600</td>
            </tr>
            <tr>
                <td>Haley Kennedy</td>
                <td>Senior Marketing Designer</td>
                <td>London</td>
                <td>43</td>
                <td>2012/12/18</td>
                <td>$313,500</td>
            </tr>
            <tr>
                <td>Tatyana Fitzpatrick</td>
                <td>Regional Director</td>
                <td>London</td>
                <td>19</td>
                <td>2010/03/17</td>
                <td>$385,750</td>
            </tr>
            <tr>
                <td>Michael Silva</td>
                <td>Marketing Designer</td>
                <td>London</td>
                <td>66</td>
                <td>2012/11/27</td>
                <td>$198,500</td>
            </tr>
            
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>
		</div>

		<div class="boutons-liste">
			<form action="savecustomer">
				<div class="form-group">
					<br> <input type="submit" name="submit"
						class="btn btn-secondary btn-lg" value="<spring:message	code="add.emp" />">
				</div>
			</form>
		</div>
	</div>
	<footer class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
<script type="text/javascript">
$(document).ready(function() {
    $('#employesTable').DataTable();
} );
</script>
</html>