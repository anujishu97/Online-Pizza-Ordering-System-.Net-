using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["admin"] = user_name.Text;
    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        if (user_name.Text == "admin" & password.Text == "12345")
        {
            Response.Redirect("admin-home.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Incorrect Username or Password.Try agian!');</script>");
        }
    }
}