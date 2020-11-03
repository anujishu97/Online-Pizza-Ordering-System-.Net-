<%@ Page Title="View Feedback" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="icon" href="images/logo.png" />
    <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
<style type="text/css">
    .centered11 {
  position:absolute;
  top: 45%;
  left: 50%;
  transform: translate(-50%, -50%);
    width: 837px;
    height:300px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centered11">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Horizontal" Width="970px">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="User Name" 
                SortExpression="uname" />
            <asp:BoundField DataField="uemail" HeaderText="E-mail" 
                SortExpression="uemail" />
            <asp:BoundField DataField="feedbacktype" HeaderText="Feedback Type" 
                SortExpression="feedbacktype" />
            <asp:BoundField DataField="descc" HeaderText="Description" 
                SortExpression="descc" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B"/>
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</div>
</asp:Content>

