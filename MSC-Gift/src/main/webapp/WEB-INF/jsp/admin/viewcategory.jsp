<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../admin/include/common.jsp" />
</head>
<body>

<jsp:include page="../admin/component/navbar.jsp" />


<!-- start Add Category Model  -->

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addCategoryModal">
  Add Category
</button>


<div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" >
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title " id="exampleModalLabel">Fill Category Details:</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        <form action="submit_category.jsp" method="post">
         <div class="form-group">
	        <label for="category">Category Name:</label>
	        <input type="text" class= "form-control " name="categoryname" placeholder="Enter category name" required /> <br>
	
	        <label for="isEnabled">Is Enabled:</label>
	        <input type="checkbox" id="isEnabled" name="isEnabled" value="true">
	        <input type="hidden" name="isEnabled" value="false">
	        <br><br>
	
	        <input type="submit" value="Submit">
        
        </div>
        </form>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save Category</button>
      </div>
    </div>
  </div>
</div>


<!-- End Add Category Model  -->




<!-- View Product list start -->





<!-- View Product list start -->








</body>
</html>