<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridex.aspx.cs" Inherits="gridex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="order_id" 
                    SortExpression="order_id" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" 
                    SortExpression="user_name" />
                <asp:BoundField DataField="user_email" HeaderText="user_email" 
                    SortExpression="user_email" />
                <asp:BoundField DataField="datee" HeaderText="datee" SortExpression="datee" />
                <asp:BoundField DataField="timee" HeaderText="timee" SortExpression="timee" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [orderhistoryyy]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
