using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
        }
    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
       string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
       SqlConnection cn=new SqlConnection(cs);
        cn.Open();
        string qr="select * from user_info where id='"+user_name.Text+"' and password='"+password.Text+"'";
        SqlCommand cmd=new SqlCommand(qr,cn);
        SqlDataReader dr=cmd.ExecuteReader();
        if(dr.Read())
        {
            Session["name"] = dr[0];
            Session["id"]=dr[1];
            Response.Redirect("user_home.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Incorrect Username or Password.Try agian!'); </script>");
        }
        cn.Close();
    }
}