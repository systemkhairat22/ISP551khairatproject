<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <a href="#" class="btn4" style="display:block;">CREATE NEW ADMIN</a>
            <a href="#" class="btn5" style="display:block;">LIST OF ADMIN</a>
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="#" class="btn5" style="display:block;">LOGOUT</a>

        </div>
        
        <!-- TOPBAR -->      
        <div style=" background-color: #043a9f; height:100px; color:blue; padding-left:70px; ">
            <h1 style="text-align: center; color: rgb(2, 2, 2);">SUPERVISOR</h1>
        </div>

        <!-- CONTENT -->
        <div class="container-fluid">
            <div>
                <form>
                <table class="table table-striped" style="width: 88%;">
                <tbody>
                    <tr>
                        <th><label for="admin_ID">ADMIN ID</label></th>
                        <th><input type="number" id="admin_ID" name="admin_ID" placeholder="ID"></th>
                    </tr>
                    <tr>
                        <th><label for="admin_name">Name</label></th>
                        <th><input type="text" id="admin_name" name="admin_name" placeholder="Full Name"></th>
                    </tr>
                    <tr>
                        <th><label for="admin_IC">IC Number</label></th>
                        <th><input type="number" id="admin_IC" name="admin_IC" placeholder="000000-00-0000"></th>
                    </tr>
                    <tr>
                        <th><label for="admin_age">Age</label></th>
                        <th><input type="number" id="admin_age" name="admin_age"></th>
                    </tr>
                    <tr>
                        <th><label for="gender">Gender</label></th>
                        <th><input type="radio" id="gender" name="gender" value="male">
                        <label for="male">Male</label>
                        <input type="radio" id="gender" name="gender" value="female">
                        <label for="female">Female</label> </th>

                    </tr>
                    <tr>
                        <th><label for="phoneNumber">Phone Number</label></th>
                        <th><input type="number" id="pNumber" name="pNumber" placeholder="000-00000000"></th>
                    </tr>
                    <tr>
                        <th><label for="memEmail">Email</label></th>
                        <th><input type="email" id="memEmail" name="memEmail" placeholder="abc@gmail.com"></th>
                    </tr>
                    <tr>
                        <th><label for="memPwd">Password</label></th>
                        <th><input type="password" id="memPwd" name="memPwd"></th>
                    </tr>
                    <tr>
                        <th><label for="memPwd2">Confirm Password</label></th>
                        <th><input type="password" id="memPwd2" name="memPwd2"></th>
                    </tr>
                </tbody>    
                </table>
            </form>
              
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="main.js"></script>
        
</body>
</html>