<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/viewCategory.do"><c:param name="categoryId" value="${product.categoryId}"/></c:url>">&lt;&lt; <c:out value="${product.name}"/></a>
	</div>


	<table id="shop_table">
		<tr>
			<th>Item ID</th>
			<th>Product ID</th>
			<th>Product name</th>
			<th>Description</th>
			<th>List Price</th>
			<th></th>
		</tr>
		<c:forEach var="item" items="${itemList.pageList}" varStatus="loopStatus">
			<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
 				<td>
 				<%-- Se comenta el enlace por no tener mucho sentido la vista que muestra --%>
<%-- 					<a href="<c:url value="/shop/viewItem.do"><c:param name="itemId" value="${item.itemId}"/></c:url>"> --%>
<%-- 							<c:out value="${item.itemId}" /> --%>
<!-- 					</a> -->
					<c:out value="${item.itemId}" />
					</td>
				<td><c:out value="${item.productId}" /></td>
				<td><c:out value="${product.name}" /></td>
				<td><c:out value="${item.attribute1}" /> <c:out
						value="${item.attribute2}" /> <c:out value="${item.attribute3}" />
					<c:out value="${item.attribute4}" /> <c:out
						value="${item.attribute5}" /> </td>
				<td><fmt:formatNumber value="${item.listPrice}"
						pattern="$#,##0.00" /></td>
				<td>
						<a
						href="<c:url value="/shop/addItemToCart.do"><c:param name="workingItemId" value="${item.itemId}"/></c:url>">
							<span class="button_table">Add to cart</span>
				</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td><c:if test="${!itemList.firstPage}">
					<a href="?page=previous"><font color="white"><B>&lt;&lt;
								Prev</B></font></a>
				</c:if> <c:if test="${!itemList.lastPage}">
					<a href="?page=next"><font color="white"><B>Next
								&gt;&gt;</B></font></a>
				</c:if></td>
		</tr>
	</table>

</div>

<%@ include file="IncludeBottom.jsp"%>
