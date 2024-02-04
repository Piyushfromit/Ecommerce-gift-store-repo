<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="../admin/component/common.jsp" />

</head>
<body>

	<jsp:include page="../admin/component/navbar.jsp" />
	<jsp:include page="../admin/component/sidebar.jsp" />





	<h1>User List</h1>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Phone</th>
				<th>Password</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.name}</td>
					<%--  <td>${user.phone}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td> --%>
				</tr>
			</c:forEach>
		</tbody>
	</table>



	<jsp:include page="../admin/component/commonjs.jsp" />
</body>
</html>