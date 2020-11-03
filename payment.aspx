<%@ Page Title="Payment" Language="C#" MasterPageFile="~/user_home.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="icon" href="images/logo.png" />
    <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
<style type="text/css">
    .centered {
  position:absolute;
  top: 45%;
  left: 59%;
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
</style>
<script type="text/javascript">
    function checkLength(el) {
        if (el.value.length != 16) {
            alert("Card Number must be exactly 16 characters")
        }
    }
    function checkLengthcvv(el) {
        if (el.value.length != 3) {
            alert("CVV number must be exactly 3 characters")
        }
    }
    function checkLengthpin(el) {
        if (el.value.length != 4) {
            alert("Pin Number atleast must be exactly 4 characters")
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centered">
  <div>Pizza-<asp:Label ID="piname" runat="server" Text=""></asp:Label></div>
  <div>Quantity-<asp:Label ID="pqty" runat="server" Text=""></asp:Label></div>
  <div>Total Ammount-<asp:Label ID="amnt" runat="server" Text=""></asp:Label></div>
  <div>Card Number-<asp:TextBox ID="cardnumber" runat="server" placeholder="XXXX-XXXX-XXXX-XXXX"  AutoCompleteType="Disabled" onblur="checkLength(this)"  MaxLength="16" required="true"></asp:TextBox></div><br />
      <div>Expiry Date-<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true">
          <asp:ListItem>Month</asp:ListItem>
          <asp:ListItem>01</asp:ListItem>
          <asp:ListItem>02</asp:ListItem>
          <asp:ListItem>03</asp:ListItem>
          <asp:ListItem>04</asp:ListItem>
          <asp:ListItem>05</asp:ListItem>
          <asp:ListItem>06</asp:ListItem>
          <asp:ListItem>07</asp:ListItem>
          <asp:ListItem>08</asp:ListItem>
          <asp:ListItem>09</asp:ListItem>
          <asp:ListItem>10</asp:ListItem>
          <asp:ListItem>11</asp:ListItem>
          <asp:ListItem>12</asp:ListItem>
          </asp:DropDownList>&nbsp
          <asp:DropDownList ID="DropDownList2" runat="server">
              <asp:ListItem>Year</asp:ListItem>
              <asp:ListItem>2025</asp:ListItem>
              <asp:ListItem>2024</asp:ListItem>
              <asp:ListItem>2023</asp:ListItem>
              <asp:ListItem>2022</asp:ListItem>
              <asp:ListItem>2021</asp:ListItem>
              <asp:ListItem>2020</asp:ListItem>
              <asp:ListItem>2019</asp:ListItem>
          </asp:DropDownList>&nbsp<asp:TextBox ID="cvv" runat="server" 
              placeholder="CVV" style="width:56px" onblur="checkLengthcvv(this)" AutoCompleteType="Disabled" MaxLength="3"
              required="true"></asp:TextBox>
      </div><br />
      <div>ATM Pin:&nbsp<asp:TextBox ID="TextBox3" runat="server" placeholder="XXXX" onblur="checkLengthpin(this)" 
              required="true" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox></div><br />
      <div>
          <asp:Button ID="Button1" runat="server" class="button22" Text="Confirm Order" 
              onclick="Button1_Click" /></div>
      </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
</asp:Content>

