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
            <a href="#" class="btn4" style="display:block;">PAYMENT</a>
            <a href="#" class="btn5" style="display:block;">KHAIRAT CLAIM</a>
            <a href="#" class="btn5" style="display:block;">MANAGE PROFILE</a>
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="#" class="btn5" style="display:block;">LOGOUT</a>

        </div>
        
        <!-- TOPBAR -->      
        <div style=" background-color: #043a9f; height:100px; color:blue; padding-left:70px; ">
            <h1 style="text-align: center; color: rgb(2, 2, 2);">PAYMENT</h1>
        </div>

        <!-- CONTENT -->
        <div class="container-fluid">
            <table class="table table-striped" style="width: 88%;">
                <form action="####" method="">
                    <tbody>
                        <tr>
                            <th><label for="adminID">Member ID</label></th>
                            <th><input type="number" id="memID" name="memID"></th>

                        </tr> 
                        <tr>
                            <th><label for="appID">Payment ID</label></th>
                            <th><input type="number" id="paymentID" name="paymentID"></th>

                        </tr>
                        <tr>
                            <th><label for="pDate">Date of Payment</label></th>
                            <th><input type="date" id="pDate" name="pDate"></th>

                        </tr>
                        <tr>
                            <th> <label for="amount">Payment Amount</label></th>
                            <th><input type="number" id="amount" name="amount"></th>
                        </tr>
                        <tr>
                            <th><label for="payRec">Receipt Of Payment</label></th>
                            <th><input type="file" id="payRec" name="PayRec"></th>
                        </tr>
                        <tr>
                        	<th><input type="submit" class="btn btn-outline-success" value="CASH">
                        		<input type="submit" class="btn btn-outline-success" value="ONLINE">                        	
                        	</th>
                        </tr>
                    </tbody>
                    
                </form>
            </table>
            
          </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="main.js"></script>
        
</body>
</html>