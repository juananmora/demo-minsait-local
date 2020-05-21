<%@ include file="IncludeTop.jsp"%>


<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Main Menu</a>
	</div>

	<table id="shop_table">
		<tr>
			<th></th>
			<th>Product ID</th>
			<th>Name</th>
		</tr>
		<c:forEach var="product" items="${productList.pageList}" varStatus="loopStatus">
			<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
				<td><a
					href="<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>">
						<c:out value="${product.description}" escapeXml="false" />
				</a></td>
				<td><b><a
						href="<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>">
							<font color="BLACK"><c:out value="${product.productId}" /></font>
					</a></b></td>
				<td><c:out value="${product.name}" /></td>
			</tr>
		</c:forEach>
		<tr>
			<td><c:if test="${!productList.firstPage}">
					<a href="?page=previous"><font color="white"><B>&lt;&lt;
								Prev</B></font></a>
				</c:if> <c:if test="${!productList.lastPage}">
					<a href="?page=next"><font color="white"><B>Next
								&gt;&gt;</B></font></a>
				</c:if></td>
		</tr>

	</table>

</div>
<%@ include file="IncludeBottom.jsp"%>
