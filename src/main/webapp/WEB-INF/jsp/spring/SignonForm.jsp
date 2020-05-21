<%@ include file="IncludeTop.jsp"%>


<div class="main-div">
	<div class="panel">
		<h2>Login form</h2>
		<p>Please enter your username and password</p>
	</div>
	<form id="Login" action="<c:url value="/shop/signon.do"/>" method="POST">
	
		<c:if test="${!empty signonForwardAction}">
			<input type="hidden" name="forwardAction"
				value="<c:url value="${signonForwardAction}"/>" />
		</c:if>

		<div class="form-group">
			<input type="text" class="form-control" id="inputEmail"
				placeholder="Email Address (j2ee)" name="username">
		</div>
		<div class="form-group">
			<input type="password" class="form-control" id="inputPassword"
				placeholder="Password (j2ee)" name="password">
		</div>
		
		<button type="submit" value="Submit" class="btn btn-primary">Login</button>

	</form>
</div>


<!--
<div id="content">
	<div id="signform">
		<form action="<c:url value="/shop/signon.do"/>" method="POST">

			<c:if test="${!empty signonForwardAction}">
				<input type="hidden" name="forwardAction"
					value="<c:url value="${signonForwardAction}"/>" />
			</c:if>

			<p>Please enter your username and password.</p>
			<span>Username:</span> <input type="password" name="username"
				value="j2ee" /> <span>Password:</span> <input type="text"
				name="password" value="j2ee" /> <input type="submit" name="Submit"
				value="Submit" />
		</form>
	</div>
</div>
-->

<!-- 
<c:if test="${!empty message}">
	<b><font color="RED"><c:url value="${message}" /></font></b>
</c:if>

<form action="<c:url value="/shop/signon.do"/>" method="POST">

	<c:if test="${!empty signonForwardAction}">
		<input type="hidden" name="forwardAction"
			value="<c:url value="${signonForwardAction}"/>" />
	</c:if>

	<table align="center" border="0">
		<tr>
			<td colspan="2">Please enter your username and password. <br />&nbsp;
			</td>
		</tr>
		<tr>
			<td>Username:</td>
			<td><input type="password" name="username" value="j2ee" /></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="text" name="password" value="j2ee" /></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="image" border="0"
				src="../images/button_submit.gif" name="update" /></td>
		</tr>
	</table>

</form>

<center>
	<a href="<c:url value="/shop/newAccount.do"/>"> <img border="0"
		src="../images/button_register_now.gif" />
	</a>
</center>
-->

<%@ include file="IncludeBottom.jsp"%>

