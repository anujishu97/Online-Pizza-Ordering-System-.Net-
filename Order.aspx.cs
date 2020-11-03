using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label pname = DataList1.Items[i].FindControl("Label3") as Label;
            Label pprice = DataList1.Items[i].FindControl("Label2") as Label;
            TextBox pqty = DataList1.Items[i].FindControl("TextBox1") as TextBox;
            string txt1 = pqty.Text;
            string lblText = pname.Text;
            string lbltext1=pprice.Text;
            Session["pname"] = lblText;
            Session["pprice"] = lbltext1;
            Session["pqty"] = txt1;
        }
        Response.Redirect("payment.aspx");
    }
   
}