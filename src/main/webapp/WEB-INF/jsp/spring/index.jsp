<%@ include file="IncludeTop.jsp"%>

<div class="content">
	<div class="title">
		<h2>The services we offer are under the following categories</h2>
	</div>
	<div id="categories">
		<div class="card">
			<div class="card_img category_product">
				<a id="products_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=PRODUCTS"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<p class="card_title card_products"><span>Products</span></p>
					<p class="card_desc">We offer a variety of products from testing frameworks to entire software architectures</p>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card_img category_service">
				<a id="services_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=SERVICES"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<p class="card_title card_services">Services</p>
					<p class="card_desc">Manual and automatic testing services, design and software development</p>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card_img category_assets">
				<a id="assets_category" class="card_links"
					href="<c:url value="/shop/viewCategory.do?categoryId=ASSETS"/>">
				</a>
			</div>
			<div class="card_text">
				<div class="card_text_container">
					<p class="card_title card_assets">Assets</p>
					<p class="card_desc">We offer our best professionals to make your product a success</p>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="IncludeBanner.jsp"%>

<%@ include file="IncludeBottom.jsp"%>
