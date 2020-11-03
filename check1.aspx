<%@ Page Title="" Language="C#" MasterPageFile="~/user_home.master" AutoEventWireup="true" CodeFile="check1.aspx.cs" Inherits="check1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered">
    <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
</asp:Content>
