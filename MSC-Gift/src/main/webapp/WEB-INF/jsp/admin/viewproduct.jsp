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


<!-- start Add Product Model  -->

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProductModal">
  Add Product
</button>


<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" >
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title " id="exampleModalLabel">Fill Product Details:</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="addproduct" method="post">
	         <div class="form-group">
		        <label for="category">Enter Product Name:</label>
		        <input type="text" class= "form-control " name="categoryname" placeholder="Enter product name" required /> <br>
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
		        <button type="button"  class ="btn btn-primary" >Add Product</button>
		         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	         </div>
        </form>
      </div>
    </div>
  </div>
</div>


<!-- End Add Product Model  -->




<!-- View Product list start -->





<!-- View Product list start -->








</body>
</html>