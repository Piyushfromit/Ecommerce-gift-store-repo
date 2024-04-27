<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>View Customer</title>
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
						<h5 class="card-title">All Customer</h5>
						<a href="#" class="btn btn-primary">Add Customer</a>
						<!--<p>All Category displayed hare</p>-->
						<!-- Table with stripped rows -->
						<table class="table datatable">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Mail Id</th>
					<th>Phone</th>
					<th>Role</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${alluserList}" var="allusers"
					varStatus="loop">

					<tr>
						<td>${allusers.id}</td>
						<td>${allusers.name}</td>
						<td>${allusers.email}</td>
						<td>${allusers.phone}</td>
						<td>${allusers.roles}</td>
						<td>${allusers.isEnabled ? 'Active' : 'Inactive'}</td>
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
<!-- End #main -->
<!-- ======= Footer ======= -->
<jsp:include page="../include/footer.jsp" />
<!-- ======= Footer End======= -->
<jsp:include page="../include/commondown.jsp" />
</body>
</html>