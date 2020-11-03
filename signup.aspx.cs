using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {}
    protected void sign_btn_Click(object sender, EventArgs e)
    {
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string qr = "insert into user_info values('" + email_text.Text + "','" + name_txt.Text + "','" + mobile_no.Text + "','" + pass_txt.Text + "')";
        SqlCommand cmd1 = new SqlCommand(qr, cn);
        cmd1.ExecuteNonQuery();
        Response.Write("<script language='javascript'>alert('Sign-up has been done sucessfully.');</script>");
        email_text.Text = "";
        name_txt.Text = "";
        mobile_no.Text = "";
        cn.Close();
      }
        
     
}