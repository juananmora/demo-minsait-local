<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div id="main_menu_link">
		<a href="<c:url value="/shop/index.do"/>">&lt;&lt; Main Menu</a>
	</div>

	<p>
	<center>
		<h2>
			<c:out value="${category.name}" />
		</h2>
	</center>
	<table id="shop_table">
		<tr>
			<th>Product ID</th>
			<th>Name</th>
		</tr>
		<c:forEach var="product" items="${productList.pageList}"
			varStatus="loopStatus">
			<tr class="${loopStatus.index % 2 == 0 ? 'even' : 'odd'}">
				<td><b><a
						href="<c:url value="/shop/viewProduct.do"><c:param name="productId" value="${product.productId}"/></c:url>">
							<c:out value="${product.productId}" />
					</a></b></td>
				<td><c:out value="${product.name}" /></td>
			</tr>
		</c:forEach>
		<tr>
			<th class="pagination"><c:if test="${!productList.firstPage}">
					<a href="?page=previous">&lt;&lt; Prev</a>
				</c:if> <c:if test="${!productList.lastPage}">
					<a href="?page=next">Next &gt;&gt;</a>
				</c:if></th>
			<th></th>
		</tr>
	</table>

</div>
<%@ include file="IncludeBottom.jsp"%>