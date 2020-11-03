using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            Session.Timeout = 1;
            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            piname.Text = Session["pname"].ToString();
            pqty.Text = Session["pqty"].ToString();
            int x = (Convert.ToInt32(Session["pprice"]));
            int y = Convert.ToInt32(Session["pqty"]);
            amnt.Text = (x * y).ToString();
            //cvv.Text = "  ";
            //cardnumber.Text = " ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int count = 0;
     try{
        string pname = piname.Text;
        int qty = Convert.ToInt32(pqty.Text);
        int price = Convert.ToInt32(amnt.Text);
        string dt = System.DateTime.Now.ToShortDateString();
        string tim = System.DateTime.Now.ToShortTimeString();
        Random r = new Random();
        int num = r.Next(29500, 78900) + 78389;
        string order1 = "123" + num.ToString();
        Session["ord"] = order1;
        string cs = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string qr = "insert into orderhistoryyy values('" + order1 + "','" + pname + "','" + qty + "','" + price + "','" + Session["id"].ToString() + "','" + Session["name"].ToString() + "','"+dt+"','"+tim+"')";
        SqlCommand cmd = new SqlCommand(qr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

      
            //order confirmation on Email
                string msg = "Hello  " + Session["id"] + "<br> Your order has been placed successfully and we will delivered soon.<br> Order no." + Session["ord"] + "<br>Thanks <br>Regards-Pizza Team";
                MailMessage msg1 = new MailMessage("kanuj8840@gmail.com", Session["name"].ToString(), "Order Confirmation", msg);
                msg1.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("kanuj8840@gmail.com", "alwaysbehappy");
                client.Send(msg1);
                count += 1;
        }
        catch (Exception ex)
        {
        }
     if (count == 1)
         Server.Transfer("confirm.aspx");
     else
         Response.Write("<script language='javascript'>alert('We are unable to confirm your order.Please check your internet connection.'); </script>");


    }
}


 