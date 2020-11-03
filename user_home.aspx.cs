using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Server.Transfer("login.aspx");
        }
        else
        {
            user_name.Text = Session["id"].ToString();
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Server.Transfer("login.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "order")
        {
            Response.Redirect("order.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}