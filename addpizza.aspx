<%@ Page Title="Add-Pizza" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addpizza.aspx.cs" Inherits="addpizza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="icon" href="images/logo.png" />
<link rel="Stylesheet" href="login.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
    .centered1{
  position:absolute;
  top: 55%;
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
            $("#div5").fadeIn(3000);
            $("#div6").fadeIn(3000);
             $("#div7").fadeIn(3000);
        });
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centered1">
<div id="div1" class="log" style="display:none;">Add-Pizza</div>
<div id="div2" style="display:none;"><asp:TextBox ID="pizza_id" runat="server" class="txt" placeholder="Pizza ID" required></asp:TextBox></div>
<div id="div3" style="display:none;"><asp:TextBox ID="pizza_name" runat="server" class="txt" placeholder="Pizza Name" required></asp:TextBox></div>
<div id="div4" style="display:none;"><asp:TextBox ID="pizza_price" runat="server" class="pass" placeholder="Price" required></asp:TextBox></div>
<div id="div5" style="display:none;">
    <asp:Label ID="Label1" runat="server" Text="Upload Pizza Image"></asp:Label></div>
<div id="div6" style="display:none;">
    <asp:FileUpload ID="FileUpload1" runat="server" /></div>
<div id="div7" style="display:none;">
    <asp:Button ID="add_btn" runat="server" Text="Add" class="button button1" OnClick="add_btn_Click"/></div>
</div>
</asp:Content>

