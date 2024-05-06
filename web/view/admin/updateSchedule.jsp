<%-- 
    Document   : InsertUser
    Created on : Mar 15, 2022, 11:36:50 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <title>Bootstrap Sign up Form Horizontal</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #999;
                background: #f3f3f3;
                font-family: 'Roboto', sans-serif;
            }
            .form-control {
                border-color: #eee;
                min-height: 41px;
                box-shadow: none !important;
            }
            .form-control:focus {
                border-color: #5cd3b4;
            }
            .form-control, .btn {        
                border-radius: 3px;
            }
            .signup-form {
                width: 500px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .signup-form h2 {
                color: #333;
                margin: 0 0 30px 0;
                display: inline-block;
                padding: 0 30px 10px 0;
                border-bottom: 3px solid #5cd3b4;
            }
            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .signup-form .form-group row {
                margin-bottom: 20px;
            }
            .signup-form label {
                font-weight: normal;
                font-size: 14px;
                line-height: 2;
            }
            .signup-form input[type="checkbox"] {
                position: relative;
                top: 1px;
            }
            .signup-form .btn {        
                font-size: 16px;
                font-weight: bold;
                background: #5cd3b4;
                border: none;
                margin-top: 20px;
                min-width: 140px;
            }
            .signup-form .btn:hover, .signup-form .btn:focus {
                background: #41cba9;
                outline: none !important;
            }
            .signup-form a {
                color: #5cd3b4;
                text-decoration: underline;
            }
            .signup-form a:hover {
                text-decoration: none;
            }
            .signup-form form a {
                color: #5cd3b4;
                text-decoration: none;
            }	
            .signup-form form a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="signup-form">
            <form action="UpdateSchedule" method="post" class="form-horizontal">
                <div class="row">
                    <div class="col-8 offset-4">
                        <h2>Insert Schedule</h2>
                    </div>	
                </div>
                <input type="hidden" name="schID" value="${schedule.getScheID()}">
                <div class="form-group row">
                    <label class="col-form-label col-4">Teacher ID</label>
                    <div class="col-8">
                        <input type="number" class="form-control" name="tid" value="${schedule.getUser().getUserID()}">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Subject ID</label>
                    <div class="col-8">
                        <input type="number" class="form-control" name="sid" value="${schedule.getSub().getSubID()}">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Class Name</label>
                    <div class="col-8">
                        <input type="text" class="form-control" name="cname" value="${schedule.getClss().getClassName()}">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-4">Start Date</label>
                    <div class="col-8">
                        <input class="form-control" type="Date" name="sdate" value = "${schedule.getSdate()}">
                    </div>        	
                </div>
                <div class="form-group row">
                    <label  class="col-form-label col-4">End Date</label>
                    <div class="col-8">
                        <td><input class="form-control" type="Date" name="edate" value = "${schedule.getEdate()}"></td>
                    </div>        	
                </div>
                <div class="form-group row">
                    <div class="col-8 offset-4">
                        <button type="submit" class="btn btn-primary btn-lg">Insert</button>
                    </div>  
                </div>		      
            </form>
        </div>
    </body>
</html>
