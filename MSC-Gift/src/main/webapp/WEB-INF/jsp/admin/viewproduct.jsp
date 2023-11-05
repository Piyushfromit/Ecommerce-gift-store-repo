<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../admin/include/common.jsp" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">


</head>
<body>

<jsp:include page="../admin/component/navbar.jsp" />


<!-- View Product Table Start-->

<div class="container mt-3">
  <h2>Product List</h2>
 <table id="example" class="display" style="width:100%">
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
        <td><button>Edit</button></td>
        <td><button>Del</button></td>
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
    
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script  type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
        $('#example').DataTable();
        });
    </script>
</div>

<!-- View Product Table end -->



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
        <form action="/admin/addproduct" method="post" enctype="multipart/form-data">
         <!-- Product Name -->
         <div class="form-group">
	        <label for="productName">Product Name:</label>
            <input type="text" id="productName" class= "form-control" name="productName" placeholder="Enter product name" required><br>
	     </div>
        <!-- Description -->
        <div class="form-group">
           <label for="description">Description:</label>
           <textarea id="description" class= "form-control" name="description" placeholder="Enter Product description" rows="4" cols="50" required></textarea><br>
        </div>
        <!-- Category ID -->
        <div class="form-group">
            <label for="categoryId">Select category</label>
             <select id="categoryId" name="categoryId" required>
             <option value="">Please select a category</option> <!-- Add an empty default option -->
              <c:if test="${allActiveCategory.size() > 0}">
                 <c:forEach items="${allActiveCategory}" var="category">
		            <option value="${category.id}">${category.categoryname}</option>
		         </c:forEach>    
             </c:if>
            </select> 
        </div>
         <!-- Product Price -->
         <div class="form-group">
	       <label for="price">Price:</label>
	       <input type="number" id="price" class= "form-control" name="price" placeholder="Product Price" required><br>
        </div>
        <!-- Discounted Price -->
         <div class="form-group">
	        <label for="discountedPrice">Discounted Price:</label>
	        <input type="number" id="discountedPrice" class= "form-control" name="discountedPrice" placeholder="Dicount Price" required><br>
        </div>
        <!-- Stock Quantity -->
        <div class="form-group">
           <label for="stockQuantity">Stock Quantity:</label>
           <input type="number" id="stockQuantity" class= "form-control" name="stockQuantity"  placeholder="Product Available quantity" required><br>
        </div>
        <!-- Product Status -->
        <div class="form-group">
	        <label for="isEnabled">Select Status:</label>
	        <select id="CategoryStatus" name="isEnabled" required>
	            <option value="true">Active</option>
	            <option value="false">Inactive</option>
	        </select>
	        <br><br>
		</div>
        <!-- Images one -->
        <div class="form-group">
           <label for="imageOne">Image One:</label>
           <input type="file" id="images" class= "form-control" name="imageFileOne" accept=".jpeg, .jpg" required><br>
        </div>
        <!-- Images two -->
        <div class="form-group">
           <label for="imageTwo">Image Two:</label>
           <input type="file" id="images" class= "form-control" name="imageFileTwo" accept=".jpeg, .jpg" required><br>
        </div>
        <!-- Images three -->
        <div class="form-group">
           <label for="imageThree">Image Three:</label>
           <input type="file" id="images" class= "form-control" name="imageFileThree" accept=".jpeg, .jpg" required><br>
        </div>
        <!-- Images four -->
        <div class="form-group">
           <label for="imageFour">Image Four:</label>
           <input type="file" id="images" class= "form-control" name="imageFileFour" accept=".jpeg, .jpg" required><br>
        </div>
        <!-- Product Weight -->
        <div class="form-group">
           <label for="productWeight">Product Weight:</label>
           <input type="number" id="productWeight" class= "form-control" name="productWeight" placeholder="Enter Product Weight in gram" required><br>
        </div>
        <!-- Product Dimensions -->
        <div class="form-group">
           <label for="productLength">Product Length:</label>
           <input type="number" id="productLength" class= "form-control" name="productLength" placeholder="Product length in Centimeter" required><br>
        </div>
        <div class="form-group">
           <label for="productWidth">Product Width:</label>
           <input type="number" id="productWidth" class= "form-control" name="productWidth" placeholder="Product Width in Centimeter" required><br>
        </div>
        <div class="form-group">
           <label for="productHeight">Product Height:</label>
           <input type="number" id="productHeight" class= "form-control" name="productHeight" placeholder="Product Height in Centimeter" required><br>
        </div>
         
          
		 <div class= "container text-end" > 
	       <button type="submit"  class ="btn btn-primary" >Add Product</button>
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