using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Net;
using System.Net.Mail;
using System.IO;
using System.Configuration;


public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = EmailTextBox.Text;

      
    }
    protected void RequestButton_Click(object sender, EventArgs e)
    {

         try
{
DataSet ds = new DataSet();
using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True"))
{
con.Open();
SqlCommand cmd = new SqlCommand("SELECT UserName,Password FROM SignUp Where EmailAddress= '" + EmailTextBox.Text.Trim() + "'", con);
SqlDataAdapter da = new SqlDataAdapter(cmd);
da.Fill(ds);
con.Close();
}//using
if(ds.Tables[0].Rows.Count>0)
{
MailMessage Msg = new MailMessage();
// Sender e-mail address.
Msg.From = new MailAddress("sheikhwasfa@gmail.com");
// Recipient e-mail address.
Msg.To.Add(EmailTextBox.Text);
Msg.Subject = "Your Password Details";
//Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["UserName"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
Msg.Body = "Hi," + ds.Tables[0].Rows[0]["UserName"] + "Please <a=http://localhost:51779/WebSite2/RecoverPassword.aspx> Click here to recover your password </a>";
    
    
    Msg.IsBodyHtml = true;
// your remote SMTP server IP.
SmtpClient smtp = new SmtpClient();
smtp.Host = "smtp.gmail.com";
smtp.Port = 587;
smtp.Credentials = new System.Net.NetworkCredential ("sheikhwasfa@gmail.com", "w@$f@958");
smtp.EnableSsl = true;
smtp.Send(Msg);
//Msg = null;
msgLabel.Text = "Your Password Details Sent to your mail";
// Clear the textbox valuess
msgLabel.Text = "";
}//if
else
{
msgLabel.Text = "The Email you entered not exists.";
}//esle
          } //try
catch (Exception ex)
{
Console.WriteLine("{0} Exception caught.", ex);
} //catch
         

    } //requestButton


    }//class

