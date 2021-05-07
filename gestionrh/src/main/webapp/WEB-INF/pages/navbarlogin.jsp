<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/accueil"> <spring:message
					code="navbar.welcome" />
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/contact"> <spring:message
							code="navbar.contact" />
					</a> <a class="nav-link" href="${pageContext.request.contextPath}/who">
						<spring:message code="navbar.who" />
					</a>


				</div>
			</div>
		</div>
		<div class="d-flex flex-row-reverse bd-highlight">
		 <a class="nav-link"
				href="${pageContext.request.contextPath}/listeemployee?lang=en">
				<img
				src="${pageContext.request.contextPath}/styles/icon/angleterre.png"
				alt="English" />
			</a> <a class="nav-link"
				href="${pageContext.request.contextPath}/listeemployee?lang=fr">
				<img src="${pageContext.request.contextPath}/styles/icon/france.png"
				alt="Français" />
			</a>
				<a class="nav-link"
				href="${pageContext.request.contextPath}/loginlogout"> <spring:message
					code="navbar.login" />
			</a>
		</div>
	</nav>
</header>