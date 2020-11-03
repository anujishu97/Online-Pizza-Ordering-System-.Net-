<%@ Page Title="View-Orders" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" href="images/logo.png" />
    <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
    .centered11 {
  position:absolute;
  top: 45%;
  left: 43%;
  transform: translate(-50%, -50%);
    width: 942px;
    height:300px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="centered11">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Horizontal" Width="1029px">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order Id" 
                SortExpression="order_id" />
            <asp:BoundField DataField="pname" HeaderText="Pizza Name" 
                SortExpression="pname" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            <asp:BoundField DataField="amt" HeaderText="Ammount" SortExpression="amt" />
            <asp:BoundField DataField="user_name" HeaderText="User Name" 
                SortExpression="user_name" />
            <asp:BoundField DataField="user_email" HeaderText="User E-mail" 
                SortExpression="user_email" />
            <asp:BoundField DataField="datee" HeaderText="Date of Order" 
                SortExpression="datee" />
            <asp:BoundField DataField="timee" HeaderText="Time of Order" 
                SortExpression="timee" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [orderhistoryyy]"></asp:SqlDataSource>
        <h4>Total Sale-&nbsp<i class="fa fa-rupee"></i><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
</div>
</asp:Content>

