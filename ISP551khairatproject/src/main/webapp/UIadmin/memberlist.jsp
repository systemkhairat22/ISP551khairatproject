<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KHAIRAT KEMATIAN SYSTEM</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<!-- SIDEBAR -->
        <div class="container" style="padding:0; margin:0; height:100%;width:200px;background-color:#0abcdb;position:fixed!important;z-index:1;overflow:auto">
            <img class="logo" alt="" src="img/KKS.jpg">
            <h3 style="text-align: center; color: rgb(2, 2, 2);">WELCOME</h3>
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="#" class="btn2" style="display:block;">HOME </a>
            <a href="#" class="btn4" style="display:block;">LIST OF MEMBER</a>
            <a href="#" class="btn5" style="display:block;">CREATE NEW MEMBER</a>
            <a href="#" class="btn5" style="display:block;">VALIDATE APPLICATION</a>
            <a href="#" class="btn5" style="display:block;">MANAGE PROFILE</a>
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="#" class="btn5" style="display:block;">LOGOUT</a>

        </div>
        
        <!-- TOPBAR -->      
        <div style=" background-color: #043a9f; height:100px; color:blue; padding-left:70px; ">
            <h1 style="text-align: center; color: rgb(2, 2, 2);">ADMIN</h1>
        </div>

        <!-- CONTENT -->
        <div class="container-fluid">
           
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="main.js"></script>
        
        <table border="1">
			<tr>
				<th>Member ID</th>
				<th> Name</th>
				<th> IC Number</th>
				<th> Email </th>
				<th> Age</th>
				<th> Address</th>
				<th>Phone Number</th>
				<th>Representative Name</th>
				<th>Representative Number</th>
				<th>Password</th>
				<th colspan="10">Action</th>
			</tr>
			<c:forEach items ="${member}" var="m" varStatus="member">
			<tr>
				<td><c:out value="${m.memberid}" /></td>
				<td><c:out value="${m.mem_name}" /></td>
				<td><c:out value="${m.mem_icnum}" /></td>
				
				<td><c:out value="${m.mem_email}" /></td>
				<td><c:out value="${m.mem_age}" /></td>
				<td><c:out value="${m.mem_address}" /></td>
				<td><c:out value="${m.mem_phonenum}" /></td>
				<td><c:out value="${m.mem_repname}" /></td>
			    <td><c:out value="${m.repnum}" /></td>
			    <td><c:out value="${m.password}" /></td>
							
				<td><a class="btn btn-primary" href="viewmembercontroller?memberid=<c:out value="${m.memberid}"/>">View</a></td>
				<td><a class="btn btn-primary" href="deletemembercontroller?memberid=<c:out value="${m.memberid}"/>">Delete</a></td>
				
			</tr>
			</c:forEach>
		</table>
</body>
</html>