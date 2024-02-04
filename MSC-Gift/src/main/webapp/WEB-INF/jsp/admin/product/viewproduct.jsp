<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../component/common.jsp" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">


</head>
<body>

	<jsp:include page="../component/navbar.jsp" />
	<jsp:include page="../component/sidebar.jsp" />

	<!-- View Product Table Start-->

	<div class="container mt-3">
		<h2>Product List</h2>
		<table id="example" class="display" style="width: 100%">
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
						<td><a href="/admin/editproduct/${product.id}"><button>Edit</button></a></td>
						<td><a href="/admin/deleteproduct/${product.id}"><button>Del</button></a></td>
						<%--  <td>${product.description}</td>
        <td>${product.imageTwo}</td>
        <td>${product.imageThree}</td>
        <td>${product.imageFour}</td>
        <td>${product.productLength}</td>
        <td>${product.productWidth}</td>
        <td>${product.productHeight}</td>  --%>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<script type="text/javascript" language="javascript"
			src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script type="text/javascript" language="javascript"
			src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
		<script>
			$(document).ready(function() {
				$('#example').DataTable();
			});
		</script>
		<a href="/admin/addproduct" class="btn btn-primary">Add Product</a>
	</div>

	<!-- View Product Table end -->


	<jsp:include page="../component/commonjs.jsp" />
</body>
</html>