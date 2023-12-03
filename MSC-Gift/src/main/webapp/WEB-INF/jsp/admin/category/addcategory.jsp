<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../component/common.jsp" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
</head>
<body>
<jsp:include page="../component/navbar.jsp" />

<!-- start Add Category   -->
        <div class="container pt-5">
			<form action="/admin/addcategory" method="post">
			    <div class="form-group">
			        <label for="categoryname">Enter Category Name:</label>
			        <input type="text" class="form-control" name="categoryname" placeholder="Enter category name" required /><br>
			    </div>
			    <div class="form-group">
			        <label for="isEnabled">Select Status:</label>
			        <select id="CategoryStatus" name="isEnabled" required>
			            <option value="true">Active</option>
			            <option value="false">Inactive</option>
			        </select>
			        <br><br>
			    </div>
			    <div class="container text-end">
			        <button type="submit" class="btn btn-primary">Add Category</button>
			        <a href="/admin/viewcategory" class="btn btn-secondary">Cancel</a>
			    </div>
			</form>
        </div>
<!-- End Add Category   -->



</body>
</html>