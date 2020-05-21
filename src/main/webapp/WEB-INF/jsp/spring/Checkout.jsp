<%@ include file="IncludeTop.jsp" %>


<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/viewCart.d"/>">&lt;&lt; Shopping Cart</a>
	</div>

<div class="title">
		<h2>Checkout Summary</h2>
	</div>
	<form action="<c:url value="/shop/updateCartQuantities.do"/>"
		method="post">
		<table id="shop_table">
			<tr>
				<th>Item ID</th>
				<th>Product ID</th>
				<th>Description</th>
				<th>In Stock?</th>
				<th>Quantity</th>
				<th>List Price</th>
				<th>Total Cost</th>
			</tr>

			<c:forEach var="cartItem" items="${cart.cartItemList.pageList}"
				varStatus="loopStatus">
				<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
					<td><c:out value="${cartItem.item.itemId}" /></td>
					<td><c:out value="${cartItem.item.productId}" /></td>
					<td><c:out value="${cartItem.item.attribute1}" /> <c:out
							value="${cartItem.item.attribute2}" /> <c:out
							value="${cartItem.item.attribute3}" /> <c:out
							value="${cartItem.item.attribute4}" /> <c:out
							value="${cartItem.item.attribute5}" /> <c:out
							value="${cartItem.item.product.name}" /></td>
					<td><c:out value="${cartItem.inStock}" /></td>
					<td><c:out value="${cartItem.quantity}"/></td>
					<td><fmt:formatNumber value="${cartItem.item.listPrice}"
							pattern="$#,##0.00" /></td>
					<td><fmt:formatNumber value="${cartItem.totalPrice}"
							pattern="$#,##0.00" /></td>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="7" class="table_total">Sub Total: <fmt:formatNumber
						value="${cart.subTotal}" pattern="$#,##0.00" />
				</th>
			</tr>
		</table>
		<div>
			<c:if test="${!cart.cartItemList.firstPage}">
				<a href="<c:url value="viewCart.do?page=previousCart"/>"><font
					color="green"><B>&lt;&lt; Prev</B></font></a>
			</c:if>
			<c:if test="${!cart.cartItemList.lastPage}">
				<a href="<c:url value="viewCart.do?page=nextCart"/>"><font
					color="green"><B>Next &gt;&gt;</B></font></a>
			</c:if>
		</div>
	</form>
	<c:if test="${cart.numberOfItems > 0}">
		<div class="checkout_btn">
			<a href="<c:url value="/shop/newOrder.do"/>"><span
				class="button_table">Continue</span></a>
		</div>
	</c:if>
</div>

<%@ include file="IncludeBottom.jsp" %>
