<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-home.aspx.cs" Inherits="admin_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="icon" href="images/logo.png">
    <title>Admin-Home</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="Stylesheet" href="home.css"/>
  <style>
        .centered {
  position:absolute;
  top: 45%;
  left: 70%;
  right:40%;
  transform: translate(-50%, -50%);
    width: 700px;
    height:300px;
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="home.aspx"><span class="fa fa-spin"><img src="images/logo.png" height="40px" /></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="addpizza.aspx">Add Pizza</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register-user.aspx">Registered User</a>
      </li>   
       <li class="nav-item">
        <a class="nav-link" href="vieworder.aspx">View Order</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="viewfeedback.aspx">View Feedback</a>
      </li> 
       <li class="nav-item">
      <a class="nav-link" href="login.aspx">Logout</a>
      </li> 
    </ul>
  </div>  
</nav>
<div style="margin-top:10%;margin-left:30% ;max-width:50%">
<marquee align="center" behavior="slide" direction="left" scrollamount="45"><font style=" font-size:100px; font-weight:bolder">WELCOME</font></marquee><marquee direction="down" behavior="slide" scrollamount="3" height="10%"><font style=" font-size:100px; font-weight:bolder">&nbsp ADMIN</font></marquee>
</div>
    </form>
</body>
</html>
