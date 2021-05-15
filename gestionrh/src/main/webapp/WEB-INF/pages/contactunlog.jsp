<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>

		<jsp:include page="navbarlogin.jsp"></jsp:include>

		<section class="h-300">
		<div class="container h-300">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title"><spring:message code="label.contact" /></h4>
									   
							
							    <div class="form-floating marginBottom10">
							      <input  type="email" class="form-control" id="floatingInput" />
							      <label for="floatingInput"><spring:message	code="label.email" /></label>
							    </div>
							    <div class="form-floating">
							      <textarea rows="5" cols="50" class="form-control" 
							     ></textarea>
							      <label for="floatingPassword">Message</label>
							    </div>
							<br>
							    <div class="checkbox mb-3">
							    
							    </div>
							    <button class="w-100 btn btn-lg btn-primary" type="submit"><spring:message	code="sendmessage" /></button>
							 
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>