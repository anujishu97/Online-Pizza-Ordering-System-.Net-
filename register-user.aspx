<%@ Page Title="Registered Users" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="register-user.aspx.cs" Inherits="register_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="home.css"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
    <div align="center" class="centered11">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" Width="824px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="User-name" SortExpression="name" />
                <asp:BoundField DataField="id" HeaderText="Email-id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="mobile_no" HeaderText="Contact no." 
                    SortExpression="mobile_no" />
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
            SelectCommand="SELECT [name], [mobile_no], [id] FROM [user_info]">
        </asp:SqlDataSource>
</div>
</asp:Content>

