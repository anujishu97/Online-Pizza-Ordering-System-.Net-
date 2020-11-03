using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* Label1.Text = System.DateTime.Now.ToShortDateString();
        Label2.Text= System.DateTime.Now.ToShortTimeString();
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string qr = "DELETE FROM feedback WHERE uname='Anuj kesarwani'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();*/
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
   /* protected void Button1_Click(object sender, EventArgs e)
    {
        System.Web.UI.HtmlControls.HtmlTextArea htaDemo = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("msg"));
        String tar = htaDemo.Value;
        Label1.Text = tar;
        try
        {
            MailMessage msg1 = new MailMessage(from.Text,tobox.Text,sub.Text,tar);
            msg1.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("kanuj8840@gmail.com", "alwaysbehappy");
            client.Send(msg1);
            Response.Write("<script language='javascript'>alert('email has been sent'); </script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert('due to network error we are unable to send you mail.Please check your internet connection'); </script>");
        }
       
    }*/
}