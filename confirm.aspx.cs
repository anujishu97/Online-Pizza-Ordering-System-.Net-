using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class confirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                ordno.Text = Session["ord"].ToString();
                emailtxt.Text = Session["name"].ToString();
            }
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "10;url=user_home.aspx";
            this.Page.Controls.Add(meta);
            Label1.Text = "You will now be redirected in 10 seconds";
    }
}