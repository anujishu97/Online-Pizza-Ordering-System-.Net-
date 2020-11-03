using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class addpizza : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void add_btn_Click(object sender, EventArgs e)
    {
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        if (FileUpload1.HasFile)
        {
            string path = Server.MapPath("~/upload/" + FileUpload1.FileName.ToString());
            FileUpload1.PostedFile.SaveAs(path);
            cn.Open();
            string na = path.Substring(path.LastIndexOf("upload"));
            string qr = "insert into pizza values('" + pizza_id.Text + "','" + pizza_name.Text + "','" + pizza_price.Text + "','" + na + "')";
            SqlCommand cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Pizza Added Successfully!!!');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Please Upload The Image!!!');</script>");
        }
    }
}