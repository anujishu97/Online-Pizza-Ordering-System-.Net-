<%@ Page Title="Order" Language="C#" MasterPageFile="~/user_home.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="home.css" />
<link rel="Stylesheet" href="login.css" />
<style>
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
}.centered {
  position:absolute;
  top: 45%;
  left: 59%;
  transform: translate(-50%, -50%);
    width: 700px;
    height:300px;
}
    .style1
    {
        text-align: center;
    }
    .style2
    {
        text-align: center;
        height: 88px;
    }
    .style3
    {
        height: 88px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="centered">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="style2">
                        <asp:Image ID="Image1" runat="server" Height="187px" 
                            ImageUrl='<%# Eval("image") %>' Width="235px" />
                    </td>
                    <td class="style3">
                        Quantity:<asp:TextBox ID="TextBox1" runat="server" value="1" placeholder="e.g. minimum 1" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Price-<asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" colspan="2">
                        <asp:Button ID="Button1" runat="server" class="button22" Text="Make Payment" 
                            onclick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [pizza] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

