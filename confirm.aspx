<%@ Page Title="Confirm Order" Language="C#" MasterPageFile="~/user_home.master" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" href="images/logo.png" />
   <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta http-equiv="Refresh" content="10;url=user_home.aspx" />
<style type="text/css">
    .centered {
  position:absolute;
  top: 45%;
  left: 60%;
  transform: translate(-50%, -50%);
    width: 700px;
    height:300px;
}
.button22 {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.msg
{
    width:100%;
    height:19%;
    border:2px black;
    color:White;
    padding:10px 14px;
    font-weight:bold;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered1">
<div class=" msg" style=" background:green;">
<i class="fa fa-2x fa-check-circle"></i><font style=" font-size:x-large">Congratulations! Your Order has been successfully placed.Order no.<asp:Label ID="ordno" runat="server" Text=""></asp:Label></font>
</div>
</div>
<div class="centered">
<div style=" max-width:60%">
<img src="images/thanks2.png"/>
</div>
<h4>Please check your E-mail-<asp:Label ID="emailtxt" runat="server" Text=""></asp:Label> for ordered summary.</h4>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</asp:Content>

