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


<!-- View Category Table Start-->

<div class="container mt-3">
  <h2>Category List</h2>
 <table id="example" class="display" style="width:100%">
       <thead>
      <tr>
        <th>ID</th>
        <th>Category Name</th>
        <th>Status</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${allCategoryList}" var="category" varStatus="loop">
        
        <tr>
          <td>${category.id}</td>
          <td>${category.categoryname}</td>
          <td>${category.isEnabled ? 'Active' : 'Inactive'}</td>
          <td><button onclick="editCategory(${category.id})">Edit</button></td>
          <td><button>Del</button></td>
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

<!-- View Category Table end -->

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
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			    </div>
			</form>
      </div>
    </div>
  </div>
</div>

<!-- End Add Category Model  -->

<!-- start Edit Category Model  -->

<div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" >
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title " id="exampleModalLabel">Edit Category Details:</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

		 <form id="editCategoryForm" action="/admin/updatecategory" method="post" >
		       <div class="form-group"  style="display: none;">
			      <label for="id">Enter Category Id:</label>
		          <input type="text" class="form-control"  id="editCategoryId" name="id" required/><br>
		       </div>
		       <div class="form-group">
			      <label for="categoryname">Enter Category Name:</label>
		          <input type="text" class="form-control"  id="editCategoryName" name="categoryname" required/><br>
		       </div>
		       <div class="form-group">
				   <label for="isEnabled">Select Status:</label>
				   <select id="CategoryStatus" name="isEnabled" required>
				       <option value="true">Active</option>
				       <option value="false">Inactive</option>
				   </select>
               </div>
		       <h1></h1>
		       <div class="container text-end">
		       <!-- Other input fields for editing category details -->
		       <button type="submit" class="btn btn-primary">Save Changes </button>
		       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		       </div>
	     </form>
	     
	    
      </div>
    </div>
  </div>
</div>


<script>
    function editCategory(categoryId) {
        // Fetch category details using AJAX and populate the modal
        $.get('/admin/getCategoryDetails', { categoryId: categoryId })
            .done(function (data) {
                // Populate the modal with existing category details
                $('#editCategoryId').val(data.id);
                $('#editCategoryName').val(data.categoryname);
                $('#editCategoryStatus').val(data.isEnabled.toString());
                /* $('#editCategoryStatus').val(data.isEnabled.toString()).prop('selected', true); */

                // Display the modal for editing
                $('#editCategoryModal').modal('show');
            })
            .fail(function (error) {
                console.log(error);
            });
    }
</script>

<!-- End Edit Category Model  -->



</body>
</html>