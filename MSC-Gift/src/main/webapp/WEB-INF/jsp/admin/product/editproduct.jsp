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
<jsp:include page="../component/sidebar.jsp" />

<div class="container pt-5">

           <form:form id="editCategoryForm" action="/admin/editproduct/${id}" method="post" enctype= "multipart/form-data">
		       
				<!-- Product Name -->
		         <div class="form-group">
			        <label for="productName">Product Name:</label>
		            <form:input type="text" id="productName" class= "form-control" path="productName" placeholder="Enter product name"  required="required" /><br>
			     </div>
		        <!-- Description -->
		        <div class="form-group">
		           <label for="description">Description:</label>
		           <form:textarea id="description" class= "form-control" path="description" placeholder="Enter Product description" rows="4" cols="50"  required="required"></form:textarea><br>
		        </div>
		        <!-- Category ID -->
		        <div class="form-group">
		            <label for="categoryId">Select category</label>
		             <form:select id="categoryId" path="categoryId"  >
		             <form:option value="">Please select a category</form:option> <!-- Add an empty default option -->
		              <c:if test="${allActiveCategory.size() > 0}">
		                 <c:forEach items="${allActiveCategory}" var="category">
				            <form:option value="${category.id}">${category.categoryname}</form:option>
				         </c:forEach>    
		             </c:if>
		            </form:select> 
		        </div>
		         <!-- Product Price -->
		         <div class="form-group">
			       <label for="price">Price:</label>
			       <form:input type="number" id="price" class= "form-control" path="price" placeholder="Product Price"  required="required"/><br>
		        </div>
		        <!-- Discounted Price -->
		         <div class="form-group">
			        <label for="discountedPrice">Discounted Price:</label>
			        <form:input type="number" id="discountedPrice" class= "form-control" path="discountedPrice" placeholder="Dicount Price"  required="required"/><br>
		        </div>
		        <!-- Stock Quantity -->
		        <div class="form-group">
		           <label for="stockQuantity">Stock Quantity:</label>
		           <form:input type="number" id="stockQuantity" class= "form-control" path="stockQuantity"  placeholder="Product Available quantity"  required="required" /><br>
		        </div>
		        <!-- Product Status -->
		        <div class="form-group">
			        <label for="isEnabled">Select Status:</label>
			        <form:select id="CategoryStatus" path="isEnabled"  required="required">
			            <form:option value="true">Active</form:option>
			            <form:option value="false">Inactive</form:option>
			        </form:select>
			        <br><br>
				</div>
		        <!-- Images one -->
		        <div class="form-group">
		           <label for="imageOne">Image One:</label>
		           <input type="file" id="images" class= "form-control" name="imageFileOne" accept=".jpeg, .jpg"  /><br>
		        </div>
		        <!-- Images two -->
		        <div class="form-group">
		           <label for="imageTwo">Image Two:</label>
		           <input type="file" id="images" class= "form-control" name="imageFileTwo" accept=".jpeg, .jpg"   /><br>
		        </div>
		        <!-- Images three -->
		        <div class="form-group">
		           <label for="imageThree">Image Three:</label>
		           <input type="file" id="images" class= "form-control" name="imageFileThree" accept=".jpeg, .jpg"  /><br>
		        </div>
		        <!-- Images four -->
		        <div class="form-group">
		           <label for="imageFour">Image Four:</label>
		           <input type="file" id="images" class= "form-control" name="imageFileFour" accept=".jpeg, .jpg"  /><br>
		        </div>
		        <!-- Product Weight -->
		        <div class="form-group">
		           <label for="productWeight">Product Weight:</label>
		           <form:input type="number" id="productWeight" class= "form-control" path="productWeight" placeholder="Enter Product Weight in gram"  required="required"/><br>
		        </div>
		        <!-- Product Dimensions -->
		        <div class="form-group">
		           <label for="productLength">Product Length:</label>
		           <form:input type="number" id="productLength" class= "form-control" path="productLength" placeholder="Product length in Centimeter"  required="required"/><br>
		        </div>
		        <div class="form-group">
		           <label for="productWidth">Product Width:</label>
		           <form:input type="number" id="productWidth" class= "form-control" path="productWidth" placeholder="Product Width in Centimeter"  required="required"/><br>
		        </div>
		        <div class="form-group">
		           <label for="productHeight">Product Height:</label>
		           <form:input type="number" id="productHeight" class= "form-control" path="productHeight" placeholder="Product Height in Centimeter"  required="required"/><br>
		        </div>
		         
		          
				 <div class= "container text-end" > 
			       <button type="submit"  class ="btn btn-primary" >Save Changes </button>
			       <a href="/admin/viewcategory" class="btn btn-secondary">Cancel</a>
			     </div>
	     </form:form> 

</div>

<jsp:include page="../component/commonjs.jsp" />
</body>
</html>