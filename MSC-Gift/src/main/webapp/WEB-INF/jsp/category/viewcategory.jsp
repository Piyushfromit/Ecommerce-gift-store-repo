<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>View Category AdminStore</title>
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
						<h5 class="card-title">All Category</h5>
						<a href="/admin/addcategory" class="btn btn-primary">Add Category</a>
						<!--<p>All Category displayed hare</p>-->
						<!-- Table with stripped rows -->
						<table class="table datatable">
							<thead>
							<tr>
								<th>ID</th>
								<th>Category Name</th>
								<th>Status</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${allCategoryList}" var="category"
									   varStatus="loop">
								<tr>
									<td>${category.id}</td>
									<td>${category.categoryname}</td>
									<td>${category.isEnabled ? 'Active' : 'Inactive'}</td>
									<td><a href="/admin/editcategory/${category.id}"><button>Edit</button></a></td>
									<td><a href="/admin/deletecategory/${category.id}"><button>Del</button></a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<!-- End Table with stripped rows -->
					</div>
				</div>
			</div>
		</div>
	</section>
</main>
<!-- End #main -->
<!-- ======= Footer ======= -->
<jsp:include page="../include/footer.jsp" />
<!-- ======= Footer End======= -->
<jsp:include page="../include/commondown.jsp" />
</body>
</html>