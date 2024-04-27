<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
						<h5 class="card-title">Edit Category</h5>
						<form:form action="/admin/editcategory/${id}"
								   method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="categoryname">Enter Category Name:</label>
								<form:input type="text" path="categoryname" class="form-control"
											placeholder="Enter category name" required="required" />
								<br>
							</div>
							<div class="form-group">
								<label for="isEnabled">Select Status:</label>
								<form:select id="CategoryStatus" path="isEnabled"
											 required="required">
									<form:option value="true">Active</form:option>
									<form:option value="false">Inactive</form:option>
								</form:select>
								<br>
								<br>
							</div>
							<div class="container text-end">
								<button type="submit" class="btn btn-primary">Save Changes
								</button>
								<a href="/admin/viewcategory" class="btn btn-secondary">Cancel</a>
							</div>
						</form:form>
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