<%@ include file="IncludeTop.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/viewCart.do"/>">&lt;&lt; Shopping Cart</a>
	</div>


	<!-- Support for Spring errors holder -->
	<spring:bind path="orderForm.*">
		<c:forEach var="error" items="${status.errorMessages}">
			<B><FONT color=RED> <BR>
				<c:out value="${error}" />
			</FONT></B>
		</c:forEach>
	</spring:bind>

	<form action="<c:url value="/shop/newOrder.do"/>" method="post">

		<table id="shop_table">
			<TR>
				<TD colspan=2>
					<p class="form_table_title">
						Payment Details
					</p>
				</TD>
			</TR>
			<TR>
				<TD>Card Type:</TD>
				<TD><spring:bind path="orderForm.order.cardType">
						<select name="<c:out value="${status.expression}"/>">
							<c:forEach var="cardType" items="${creditCardTypes}">
								<option <c:if test="${cardType == status.value}">selected</c:if>
									value="<c:out value="${cardType}"/>">
									<c:out value="${cardType}" /></option>
							</c:forEach>
						</select>
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Card Number:</TD>
				<TD><spring:bind path="orderForm.order.creditCard">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Expiry Date (MM/YYYY):</TD>
				<TD><spring:bind path="orderForm.order.expiryDate">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD colspan=2>
					<p class="form_table_title">Billing address</p>
				</TD>
			</TR>

			<TR>
				<TD>First name:</TD>
				<TD><spring:bind path="orderForm.order.billToFirstName">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Last name:</TD>
				<TD><spring:bind path="orderForm.order.billToLastName">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Address 1:</TD>
				<TD><spring:bind path="orderForm.order.billAddress1">
						<input type="text" size="40"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Address 2:</TD>
				<TD><spring:bind path="orderForm.order.billAddress2">
						<input type="text" size="40"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>City:</TD>
				<TD><spring:bind path="orderForm.order.billCity">
						<input type="text" name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>State:</TD>
				<TD><spring:bind path="orderForm.order.billState">
						<input type="text" size="4"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Zip:</TD>
				<TD><spring:bind path="orderForm.order.billZip">
						<input type="text" size="10"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>
			<TR>
				<TD>Country:</TD>
				<TD><spring:bind path="orderForm.order.billCountry">
						<input type="text" size="15"
							name="<c:out value="${status.expression}"/>"
							value="<c:out value="${status.value}"/>" />
					</spring:bind></TD>
			</TR>

			<TR>
				<TD colspan=2><spring:bind
						path="orderForm.shippingAddressRequired">
						<input type="checkbox"
							name="<c:out value="${status.expression}"/>" value="true"
							<c:if test="${status.value}">checked</c:if>>
		Ship to different address...
  </spring:bind></TD>
			</TR>
			<tr>
				<td colspan=2>
					<p class="checkout_btn form_table_title">
						<input type="submit" value=Submit name="submit" />
					</p>
				</td>
			</tr>
		</TABLE>
	</form>

</div>

<%@ include file="IncludeBottom.jsp"%>
