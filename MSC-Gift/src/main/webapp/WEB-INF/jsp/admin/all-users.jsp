<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.ParseException" %> 
<%@ page import="java.text.SimpleDateFormat" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../resources/css/crm.css">
</head>
<body>


<jsp:include page="../admin/component/functionheader.jsp" />


 
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
 
 
 
 


</body>
</html>