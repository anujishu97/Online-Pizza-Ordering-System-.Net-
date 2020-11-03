<%@ Page Title="Sign-Up" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

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
<script>
    $(document).ready(function () {
        $(window).on("load", function () {
            $("#div1").fadeIn(1000);
            $("#div2").fadeIn(2000);
            $("#div3").fadeIn(3000);
            $("#div4").fadeIn(3000);
            $("#div5").fadeIn(3000);
            $("#div6").fadeIn(3000);
        });
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered1">
<div id="div1" class="log" style="display:none;">Sign-Up</div>
<div id="div2" style="display:none;"><asp:TextBox ID="name_txt" runat="server" class="txt" placeholder="Full Name" required></asp:TextBox></div>
<div id="div3" style="display:none;"><asp:TextBox ID="email_text" runat="server" class="pass" placeholder="E-mail" required></asp:TextBox></div>
<div id="div4" style="display:none;"><asp:TextBox ID="mobile_no" runat="server" class="pass"  placeholder="Mobile-No" required></asp:TextBox></div>
<div id="div5" style="display:none;"><asp:TextBox ID="pass_txt" runat="server" class="pass" TextMode="Password" placeholder="Password" required></asp:TextBox></div>
<div id="div6" style="display:none;">
    <asp:Button ID="sign_btn" runat="server" Text="Sign-Up" class="button button1" onclick="sign_btn_Click"/></div>
</div>
</asp:Content>

