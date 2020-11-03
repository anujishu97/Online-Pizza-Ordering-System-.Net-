<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" href="images/logo.png">
    <title>Online Pizza Ordering</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="Stylesheet" href="home.css"/>
  <script>
      $(document).ready(function () {
          $(window).on("load", function () {
              $("#div1").fadeIn(1000);
              $("#div2").fadeIn(2000);
              $("#div3").fadeIn(2000);
          });
      });
  </script>
  <style type="text/css">
     .centered11 {
  position:absolute;
  top: 55%;
  left: 45%;
  transform: translate(-50%, -50%);
    width: 942px;
    height:300px;
}
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
        <a class="nav-link" href="home.aspx">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin-login.aspx">Admin-Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.aspx">User-Login</a>
      </li>   
    </ul>
  </div>  
</nav>
    </div>
    <div>
    <img class="bg" src="images/pizz1.jpg" />
    <div class="centered11 container-fluid">
    <div class="row">
  <div id="div1" class="col-md-1 col-xs-12 mag"><a href="login.aspx"><img src="images/banner1.jpg" class="img-man"/></a></div>
  <div class="col-md-1"><a href="#"></a></div>
  <div id="div2" class="col-md-1 hidden-xl mag"><a href="login.aspx"><img src="images/banner2.jpg" class="img-man"/></a></div>
   <div class="col-md-1"><a href="#"></a></div>
  <div id="div3" class="col-md-1 col-xs-8"><a href="login.aspx"><img src="images/banner3.jpg" class="img-man"/></a></div>
</div>
    </div>
    </div>
    </form>
    <div class="footer bg-dark">
  <p>Posted by: Anuj Kesarwani & Archit Garg</p>
  <p>Contact information: <a href="mailto:anujkesarwani35@gmail.com">anujkesarwani35@gmail.com</a>.</p>
</div>
</body>
</html>
