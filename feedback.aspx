<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/user_home.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" href="images/logo.png" />
    <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
<style type="text/css">
    .centered11 {
  position:absolute;
  top: 40%;
  left: 59%;
  transform: translate(-50%, -50%);
    width: 700px;
    height:300px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered11">
<div><h4>FeedBack Form</h4></div>
<p>We would love to hear your thoughts, concerns or problems with <br />anything so we can improve!</p>
<hr />
<h5>Feedback Type</h5>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Comments" 
        GroupName="Feedbacktype" />
    <asp:RadioButton
        ID="RadioButton2" runat="server" Text="Bug Reports" 
        GroupName="Feedbacktype" />
    <asp:RadioButton ID="RadioButton3" runat="server" Text="Questions" 
        GroupName="Feedbacktype"   /><br />
        <h5>Describe FeedBack</h5>
    <textarea id="fb" name="fb" cols="50" rows="5" maxlength="150" style=" resize:none;" runat="server" placeholder="Max Character-150" required="true"></textarea>
    <h5>Name</h5> 
    <asp:TextBox ID="uname" runat="server" style="width:40%" required="true"></asp:TextBox>
    <h5>E-mail</h5>
    <asp:TextBox ID="email" runat="server" style="width:40%" required="true"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" class="btn-danger" 
        Text="Submit Feedback" onclick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

