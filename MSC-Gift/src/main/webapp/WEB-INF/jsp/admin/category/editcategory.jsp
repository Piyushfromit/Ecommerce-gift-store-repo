<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../component/common.jsp" />

<style type="text/css">
.custom-bg{
	background: #2196F3!important;
}
</style>


</head>

<body>

<jsp:include page="../component/navbar.jsp" />

<div class="container pt-5">

           <form:form id="editCategoryForm" action="/admin/editcategory/${id}" method="post" enctype= "multipart/form-data">
		       
		        <div class="form-group">
			        <label for="categoryname">Enter Category Name:</label>
			        <form:input type="text" path="categoryname" class="form-control"  placeholder="Enter category name" required="required" /><br>
			    </div>
			    <div class="form-group">
			        <label for="isEnabled">Select Status:</label>
			        <form:select id="CategoryStatus" path="isEnabled" required="required">
			            <form:option value="true">Active</form:option>
			            <form:option value="false">Inactive</form:option>
			        </form:select>
			        <br><br>
			    </div> 
		      
		       <div class="container text-end">
		         <button type="submit" class="btn btn-primary">Save Changes </button>
		          <a href="/admin/viewcategory" class="btn btn-secondary">Cancel</a>
		       </div> 
	     </form:form> 

</div>


</body>
</html>