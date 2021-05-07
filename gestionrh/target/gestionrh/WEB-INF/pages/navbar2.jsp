<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<header>
	<nav class="navbar navbar-inverse">
	
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/accueil"><spring:message
						code="navbar.welcome" /></a>
			</div>
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/contact"><spring:message
						code="navbar.contact" /></a>
			</div>
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/who"><spring:message
						code="navbar.who" /></a>
			</div>
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/listemanager"><spring:message
						code="navbar.managerlist" /></a>
			</div>
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/listeemployee"><spring:message
						code="navbar.employeelist" /></a>
				<%-- 				<li><a class="navbar-brand" href="${pageContext.request.contextPath}/addemployee"><spring:message code="label.email" /></a></li> --%>
			</div>
			<div class="nav navbar-nav navbar-left">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/parameters"><spring:message
						code="navbar.param" /></a>
			</div>
			<div class="nav navbar-nav navbar-right">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/loginlogout"><spring:message
						code="navbar.logout" /></a>
			</div>
						<ul class="nav navbar-nav navbar-right">
				<li><a class="navbar-brand"
					href="${pageContext.request.contextPath}/listeemployee?lang=en"><img
						src="${pageContext.request.contextPath}/styles/icon/angleterre.png"
						alt="English" /></a></li>
				<li><a class="navbar-brand"
					href="${pageContext.request.contextPath}/listeemployee?lang=fr"><img
						src="${pageContext.request.contextPath}/styles/icon/france.png"
						alt="Français" /></a></li>
			</ul>
	
	</nav>
</header>