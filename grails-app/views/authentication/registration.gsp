<%--
  Created by IntelliJ IDEA.
  User: Aman's PC
  Date: 20-Jul-19
  Time: 9:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
    .registration-form {
        width: 340px;
        margin: 50px auto;
    }
    .registration-form form {
        margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .registration-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {
        font-size: 15px;
        font-weight: bold;
    }
    </style>
</head>
<body>
<div class="registration-form">
    <div class="card">
        <div class="card-header">
            <h1>Member Registration</h1>
        </div>
        <div class="card-body">
            <g:form controller="authentication" action="doRegistration">
                <g:render template="/member/form"/>
                <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
                <g:link controller="authentication" action="login" class="btn btn-primary"><g:message code="back.to.login"/></g:link>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>