<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/css/my-login.css">
<body>
	<jsp:include page="navbarlogin.jsp"></jsp:include>

	<!-- Main Content -->

	<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
							<form>
							    <img class="mb-4" src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
							    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
							
							    <div class="form-floating marginBottom10">
							      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
							      <label for="floatingInput">Email address</label>
							    </div>
							    <div class="form-floating">
							      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
							      <label for="floatingPassword">Password</label>
							    </div>
							
							    <div class="checkbox mb-3">
							      <label>
							        <input type="checkbox" value="remember-me"> Remember me
							      </label>
							    </div>
							    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
							    <p class="mt-5 mb-3 text-muted">© 2017–2021</p>
							  </form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/my-login.js"></script>
	

	<!-- Footer -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>