using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
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
        System.Web.UI.HtmlControls.HtmlTextArea htaDemo = (System.Web.UI.HtmlControls.HtmlTextArea)(fb.FindControl("fb"));
        string msg = htaDemo.Value;  
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        if (RadioButton1.Checked)
        {
            string qr = "insert into feedback values('"+uname.Text+"','"+email.Text+"','"+RadioButton1.Text+"','"+msg+"')";
            SqlCommand cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Thanks For Feedback'); </script>");

        }
        else if (RadioButton2.Checked)
        {
            string qr = "insert into feedback values('" +uname.Text+ "','" + email.Text + "','" + RadioButton2.Text + "','" + msg + "')"; 
            SqlCommand cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Thanks For Feedback'); </script>");
        }
        else if (RadioButton3.Checked)
        {
          string qr = "insert into feedback values('" +uname.Text+ "','" + email.Text + "','" + RadioButton3.Text + "','" + msg + "')";
            SqlCommand cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Thanks For Feedback'); </script>");
        }
        else
            Response.Write("<script language='javascript'>alert('Please select feedback type'); </script>");
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        fb.InnerText = "";
    }
}