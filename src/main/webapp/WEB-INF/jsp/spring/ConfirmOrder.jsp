<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/newOrder.do"/>">&lt;&lt; Check order</a>
	</div>

	<div class="title">
		<h4>Please confirm the information below and then press continue...</h4>
	</div>
	<table id="shop_table">
		<tr>
			<td align="center" colspan="2"><font size="4"><b>Order</b></font>
				<br /> <font size="3"><b><fmt:formatDate
							value="${orderForm.order.orderDate}"
							pattern="yyyy/MM/dd hh:mm:ss" /></b></font></td>
		</tr>

		<TR>
			<TD colspan=2>
				<p class="form_table_title">Billing address</p>
			</TD>
		</TR>
		<tr>
			<td>First name:</td>
			<td><c:out value="${orderForm.order.billToFirstName}" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><c:out value="${orderForm.order.billToLastName}" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><c:out value="${orderForm.order.billAddress1}" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><c:out value="${orderForm.order.billAddress2}" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><c:out value="${orderForm.order.billCity}" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><c:out value="${orderForm.order.billState}" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><c:out value="${orderForm.order.billZip}" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><c:out value="${orderForm.order.billCountry}" /></td>
		</tr>
		<TR>
			<TD colspan=2>
				<p class="form_table_title">Shipping address</p>
			</TD>
		</TR>
		<tr>
			<td>First name:</td>
			<td><c:out value="${orderForm.order.shipToFirstName}" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><c:out value="${orderForm.order.shipToLastName}" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><c:out value="${orderForm.order.shipAddress1}" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><c:out value="${orderForm.order.shipAddress2}" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><c:out value="${orderForm.order.shipCity}" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><c:out value="${orderForm.order.shipState}" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><c:out value="${orderForm.order.shipZip}" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><c:out value="${orderForm.order.shipCountry}" /></td>
		</tr>

		<tr>
			<td colspan=2 class="form_table_title">
				<p class="checkout_btn">
					<a href="<c:url value="/shop/newOrder.do?_finish=true"/>"><span
						class="button_table">Continue</span></a>
				</p>
			</td>
		</tr>
	</table>

</div>
<%@ include file="IncludeBottom.jsp"%>
