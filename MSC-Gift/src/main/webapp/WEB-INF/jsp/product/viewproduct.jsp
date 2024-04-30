<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>View Product AdminStore</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<jsp:include page="../include/commonup.jsp" />
</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="../include/header.jsp" />
<!-- ======= Header Sidebar ======= -->
<!-- ======= Sidebar ======= -->
<jsp:include page="../include/sidebar.jsp" />
<!-- ======= End Sidebar ======= -->
<main id="main" class="main">
	<section class="section">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<div class="d-flex justify-content-between ">
							<h3 class="card-title">All Product</h3>
							<a href="#" class="btn btn-primary mt-3 mb-3 ">Add Product</a>
						</div>

							<table class="table datatable">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>Category ID</th>
										<th>Price</th>
										<th>Discount</th>
										<th>Quantity</th>
										<th>Status</th>
										<th>Image</th>
										<th>Weight (gram)</th>
										<th>Created Date</th>
										<th>Updated Date</th>
										<th>Edit</th>
										<th>Delete</th>
										<!-- <th>Description</th>
										   <th>Image Two</th>
										   <th>Image Three</th>
										   <th>Image Four</th>
										   <th>Product Length</th>
										   <th>Product Width</th>
										   <th>Product Height</th> -->
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${allProductList}" var="product" varStatus="loop">
										<tr>
											<td>${product.id}</td>
											<td>${product.productName}</td>
											<td>${product.categoryId}</td>
											<td>${product.price}</td>
											<td>${product.discountedPrice}</td>
											<td>${product.stockQuantity}</td>
											<td>${product.isEnabled ? 'Active' : 'Inactive'}</td>
											<td>${product.imageOne}</td>
											<td>${product.productWeight}</td>
											<td>${product.createdDate}</td>
											<td>${product.updatedDate}</td>
											<td><a href="/admin/editproduct/${product.id}"><button class="btn btn-primary">Edit</button></a></td>
											<td><a href="/admin/deleteproduct/${product.id}"><button class="btn btn-danger">Del</button></a></td>
											<!--  <td>${product.description}</td>
											   <td>${product.imageTwo}</td>
											   <td>${product.imageThree}</td>
											   <td>${product.imageFour}</td>
											   <td>${product.productLength}</td>
											   <td>${product.productWidth}</td>
											   <td>${product.productHeight}</td>  -->
										</tr>
									</c:forEach>
								</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>
<!-- ======= Footer ======= -->
<jsp:include page="../include/footer.jsp" />
<!-- ======= Footer End======= -->
<jsp:include page="../include/commondown.jsp" />
</body>
</html>