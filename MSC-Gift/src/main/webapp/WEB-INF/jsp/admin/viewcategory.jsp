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
        <form action="addcategory" method="post">
	         <div class="form-group">
		        <label for="category">Enter Category Name:</label>
		        <input type="text" class= "form-control " name="categoryname" placeholder="Enter category name" required /> <br>
		     </div>
		     <div class="form-group">
		        <label for="categorystatus">Select Status:</label>
		        <select id="CategoryStatus">
					  <option value="true" >Active</option>
					  <option value="false">Inactive</option>
				</select>
		        <br><br>
		     </div>
		     <div class= "container text-end" > 
		        <button type="button"  class ="btn btn-primary" >Add Category</button>
		         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	         </div>
        </form>
      </div>
    </div>
  </div>
</div>


<!-- End Add Category Model  -->




<!-- View Product list start -->





<!-- View Product list start -->








</body>
</html>