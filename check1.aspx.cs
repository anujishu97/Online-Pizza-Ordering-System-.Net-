using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class check1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Web.UI.HtmlControls.HtmlTextArea htaDemo = (System.Web.UI.HtmlControls.HtmlTextArea)(TextArea1.FindControl("TextArea1"));
        string msg = htaDemo.Value;
        Label1.Text = msg;
    }
}