<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_home.aspx.cs" Inherits="user_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" href="images/logo.png">
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="Stylesheet" href="home.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="home.aspx"><span class="fa fa-spin"><img src="images/logo.png" height="40px" /></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="user_home.aspx">Welcome <asp:Label ID="user_name" runat="server" Text=""></asp:Label></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_home.aspx">Home</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="feedback.aspx">Feedback</a>
      </li> 
      <li class="nav-item">
      <asp:Button ID="logout" runat="server" class="nav-link bg-dark" Text="Logout" 
              style="border: none;" onclick="logout_Click"></asp:Button>
      </li> 
    </ul>
  </div>  
</nav>
    </div>
    <div class="centered1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [pizza]">
        </asp:SqlDataSource>
    </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
             RepeatColumns="3" 
            RepeatDirection="Horizontal" Width="1036px" Height="563px" 
        onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("id") %>' style=" visibility:hidden"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("image") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" style="text-align: center" 
                                Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="w-100">
                    <tr>
                        <td style="text-align: center">
                            Price-<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" CssClass="btn-info" Text="Buy Now" CommandName="order" CommandArgument='<% #Eval("id")%>'/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
    
</body>
</html>