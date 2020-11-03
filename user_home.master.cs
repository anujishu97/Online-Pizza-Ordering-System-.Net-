using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        user_name.Text = Session["id"].ToString();
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Server.Transfer("login.aspx");
    }
}
