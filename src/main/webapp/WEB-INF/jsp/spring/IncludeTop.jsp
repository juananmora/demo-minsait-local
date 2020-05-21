<%@ page contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	<title>Minsait demo app</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<meta name="author" content="rbarbosat">
	<link href="../css/main.css" rel="stylesheet">
	</head>
	
	<body>
		
		<div id="topbar" class="container-wrapper header-navbar">
			<div class="container-wrapper-logo">
				<a class="logo navbar-btn" href="<c:url value="/"/>" title="Inicio">
					<img class="logo" src="../img-minsait/logominsait.png" title="Minsait" alt="Minsait">
				</a>
			</div>
			<div id="cartbar">
				<a href="<c:url value="/shop/viewCart.do"/>">
					<img border=0 id="carrito" alt="Carrito" src="../img-minsait/cart.png">
				</a>
				|
				<c:if
					test="${empty userSession.account}">
					<a href="<c:url value="/shop/signonForm.do"/>">
						Sign in
					</a>
				</c:if>
				<c:if test="${!empty userSession.account}">
					<a href="<c:url value="/shop/signoff.do"/>">
						Sign out
					</a>
					|
					<a href="<c:url value="/shop/editAccount.do"/>">My account</a>
				</c:if>
				|
				<a href="help.html">
					?
				</a>
			</div>
			<div id="buscador">
				<form action="<c:url value="/shop/searchProducts.do"/>">
					<input id="search_box" type="text" name=keyword size=14/> <input id="search_button" type="submit" value="Search" name="Search"></input>
				</form>
			</div>
		</div>
		<%@ include file="IncludeQuickHeader.jsp"%>