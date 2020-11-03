using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class vieworder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string qr = "select Sum(amt) from orderhistoryyy";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr[0].ToString();
        }
    }
}