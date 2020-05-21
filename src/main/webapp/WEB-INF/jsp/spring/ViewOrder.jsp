<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Main Menu</a>
	</div>


	<c:if test="${!empty message}">

		<div class="title">
			<h4>
				<c:out value="${message}" />
			</h4>
		</div>
	</c:if>

	<table id="shop_table">
		<tr>
			<td align="center" colspan="2"><font size="4"><b>Order
						#<c:out value="${order.orderId}" />
				</b></font> <br /> <font size="3"><b><fmt:formatDate
							value="${order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" /></b></font></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Payment details</p>
			</td>
		</tr>
		<tr>
			<td>Card Type:</td>
			<td><c:out value="${order.cardType}" /></td>
		</tr>
		<tr>
			<td>Card Number:</td>
			<td><c:out value="${order.creditCard}" /></td>
		</tr>
		<tr>
			<td>Expiry Date (MM/YYYY):</td>
			<td><c:out value="${order.expiryDate}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Billing address</p>
			</td>
		</tr>
		<tr>
			<td>First name:</td>
			<td><c:out value="${order.billToFirstName}" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><c:out value="${order.billToLastName}" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><c:out value="${order.billAddress1}" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><c:out value="${order.billAddress2}" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><c:out value="${order.billCity}" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><c:out value="${order.billState}" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><c:out value="${order.billZip}" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><c:out value="${order.billCountry}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Shipping address</p>
			</td>
		</tr>
		<tr>
			<td>First name:</td>
			<td><c:out value="${order.shipToFirstName}" /></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><c:out value="${order.shipToLastName}" /></td>
		</tr>
		<tr>
			<td>Address 1:</td>
			<td><c:out value="${order.shipAddress1}" /></td>
		</tr>
		<tr>
			<td>Address 2:</td>
			<td><c:out value="${order.shipAddress2}" /></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><c:out value="${order.shipCity}" /></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><c:out value="${order.shipState}" /></td>
		</tr>
		<tr>
			<td>Zip:</td>
			<td><c:out value="${order.shipZip}" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><c:out value="${order.shipCountry}" /></td>
		</tr>
		<tr>
			<td>Courier:</td>
			<td><c:out value="${order.courier}" /></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="form_table_title">Status:</p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table id="summary_table">
					<tr>
						<th>Item ID</th>
						<th>Description</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Total Cost</th>
					</tr>
					<c:forEach var="lineItem" items="${order.lineItems}"
						varStatus="loopStatus">
						<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
							<td><c:out value="${lineItem.itemId}" /></td>
							<td><c:out value="${lineItem.item.attribute1}" /> <c:out
									value="${lineItem.item.attribute2}" /> <c:out
									value="${lineItem.item.attribute3}" /> <c:out
									value="${lineItem.item.attribute4}" /> <c:out
									value="${lineItem.item.attribute5}" /> <c:out
									value="${lineItem.item.product.name}" /></td>
							<td><c:out value="${lineItem.quantity}" /></td>
							<td align="right"><fmt:formatNumber
									value="${lineItem.unitPrice}" pattern="$#,##0.00" /></td>
							<td align="right"><fmt:formatNumber
									value="${lineItem.totalPrice}" pattern="$#,##0.00" /></td>
						</tr>
					</c:forEach>
					<tr>
						<th colspan="5" align="right">Total: <fmt:formatNumber
								value="${order.totalPrice}" pattern="$#,##0.00" /></th>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

<%@ include file="IncludeBottom.jsp"%>
