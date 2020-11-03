<%@ Page Title="Admin-Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin-login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" href="images/logo.png" />
<link rel="Stylesheet" href="login.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
    .centered1{
  position:absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $(window).on("load", function () {
            $("#div1").fadeIn(1000);
            $("#div2").fadeIn(2000);
            $("#div3").fadeIn(3000);
            $("#div4").fadeIn(3000);
        });
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered1">
<div id="div1" class="log" style="display:none;">Admin-Login</div>
<div id="div2" style="display:none;"><asp:TextBox ID="user_name" runat="server" class="txt" placeholder="Email or Username" required></asp:TextBox></div>
<div id="div3" style="display:none;"><asp:TextBox ID="password" runat="server" class="pass" TextMode="Password" placeholder="Password" required></asp:TextBox></div>
<div id="div4" style="display:none;">
    <asp:Button ID="login_btn" runat="server" Text="Login" class="button button1" onclick="login_btn_Click"/></div>
</div>
</asp:Content>

