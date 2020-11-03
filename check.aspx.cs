using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Session["pname"].ToString();
        Label2.Text = Session["pprice"].ToString();
        Label3.Text = Session["pqty"].ToString();
    }
}