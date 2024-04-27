<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Pages / Login - NiceAdmin Bootstrap Template</title>
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
						<h5 class="card-title">Add Category</h5>
						<!-- start Add Category   -->
						<form action="/admin/addcategory" method="post">
							<div class="form-group">
								<label for="categoryname">Enter Category Name:</label> <input
									type="text" class="form-control" name="categoryname"
									placeholder="Enter category name" required /><br>
							</div>
							<div class="form-group">
								<label for="isEnabled">Select Status:</label>
								<select
										id="CategoryStatus" name="isEnabled" required>
									<option value="true">Active</option>
									<option value="false">Inactive</option>
								</select>
								<br>
								<br>
							</div>
							<div class="container text-end">
								<button type="submit" class="btn btn-primary">Add Category</button>
								<a href="/admin/viewcategory" class="btn btn-secondary">Cancel</a>
							</div>
						</form>
						<!-- End Add Category   -->
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