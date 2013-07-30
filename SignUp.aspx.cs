using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

 
using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;

using System.Security;
using System.Security.Cryptography;

using System.Net;
using System.Net.Mail;




public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        Button1.Enabled = false;
      
 }
    
    
   

    protected void CaptchaTextBox_TextChanged(object sender, EventArgs e)
    {

    } 
    
      
    protected void Button1_Click1(object sender, EventArgs e)
    {

        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();


        try
        {

            String SQLQuery = "SELECT COUNT(*) EmailAddress FROM SignUp where EmailAddress=\'" + EmailAddressTextBox.Text + "\'";
           
            SqlCommand command = new SqlCommand(SQLQuery, conn);

            int count = Convert.ToInt32(command.ExecuteScalar());

            if (count == 0) //0 means not available 
            {
                Label3.Text = "available";

               // mycmd.CommandText = "Insert into SignUp1 (Title,FirstName,LastName,UserName,EmailAddress,Password,FindUs,AdditionalDetails,Active,ActivationToken) Values ('" + TitleDropDownList.Text + "', '" + FirstNameTextBox.Text + "', '" + LastNameTextBox.Text + "', '" + UserNameTextBox.Text + "','" + EmailAddressTextBox.Text + "', '" + PasswordTextBox.Text + "','" + FindUsDrooDownList.Text + "','" + AdditionalDetailsTextBox.Text + "','" + "0" + "','" + Guid.NewGuid().ToString() + "')";

               mycmd.CommandText = "Insert into SignUp (Title,FirstName,LastName,UserName,EmailAddress,Password,FindUs,AdditionalDetails) Values ('" + TitleDropDownList.Text + "', '" + FirstNameTextBox.Text + "', '" + LastNameTextBox.Text + "', '" + UserNameTextBox.Text + "','" + EmailAddressTextBox.Text + "', '" + EncryptData(PasswordTextBox.Text) + "','" + FindUsDrooDownList.Text + "','" + AdditionalDetailsTextBox.Text + "')";
          
            
                
                /*   
                var fromAddress = new MailAddress("sheikhwasfa@gmail.com", "Wasfa Anjum");
                var toAddress = new MailAddress(EmailAddressTextBox.Text);
                const string fromPassword = "w@$f@958";
                const string subject = "Account Activation";
                const string body = "Body";
               // string URL ="<a href='http://localhost/mysite/Status.aspx?CustomerId= " & Session["CustID"].ToString() & "&RefId= " & Session["RefId"].ToString() & "&LinkKey= " & Session["LinkKey"].ToString()  "'>Click here to confirm status</a>";

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body

                  
                })
                {
                    smtp.Send(message);
                }


               /*

        MailMessage mm = new MailMessage();
        mm.To.Add(new MailAddress(EmailAddressTextBox.Text, "Request for Verification"));
        mm.From = new MailAddress("sheikhwasfa@gmail.com");
        mm.Body = @"<a href=http://localhost:51779/WebSite2/Activate.aspx?token={yourActivationGuid}> Click here to activate your account </a>";
        mm.IsBodyHtml = true;
        mm.Subject = "Verification";
        SmtpClient smcl = new SmtpClient();
        smcl.Host = "smtp.gmail.com";
        smcl.Port = 587;
        smcl.Credentials = new NetworkCredential("sheikhwasfa@gmail.com", "w@$f@958");
        smcl.EnableSsl = true;
        smcl.Send(mm);

                */




              int k  = Convert.ToInt32(mycmd.ExecuteScalar());

               mycmd.CommandText = "Insert into UserAccount (FirstName,LastName,EmailAddress,NewPass) Values ('"+ FirstNameTextBox.Text + "','"+ LastNameTextBox.Text+ "','"+  EmailAddressTextBox.Text + "','"+ EncryptData(PasswordTextBox.Text)+"')";

               int m = Convert.ToInt32(mycmd.ExecuteScalar());
              
               conn.Close();
    }
            else
            {
                Label3.Text = "Not Available";
            }



            Captcha1.ValidateCaptcha(CaptchaTextBox.Text.Trim());
            if (Captcha1.UserValidated)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "You have Entered Valid Captcha Characters";
            }//if
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "You have Entered InValid Captcha Characters please Enter again";
            }//else



            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            UserNameTextBox.Text = "";
            EmailAddressTextBox.Text = "";
            PasswordTextBox.Text = "";
            AdditionalDetailsTextBox.Text = "";



        }
        catch (Exception ex)
        {
            LabelStatus.Text = "Error: " + ex.Message;
            LabelStatus.BackColor = System.Drawing.Color.Red;
            LabelStatus.ForeColor = System.Drawing.Color.White;
            LabelStatus.Visible = true;

        }


        conn.Close();
    }

    private string NEWID()
    {
        throw new NotImplementedException();
    }



    private string Encrypt(string p)
    {
        throw new NotImplementedException();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked) Button1.Enabled = true;
        else Button1.Enabled = false; 
    }

    protected void PasswordTextBox_TextChanged(object sender, EventArgs e)
    {
        //lblEncode.Text = base64Encode(PasswordTextBox.Text);

    }

    const string passphrase = "password";
    public static string EncryptData(string Message)
    {
        byte[] Results;
        System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();
        MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
        byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(passphrase));
        TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();
        TDESAlgorithm.Key = TDESKey;
        TDESAlgorithm.Mode = CipherMode.ECB;
        TDESAlgorithm.Padding = PaddingMode.PKCS7;
        byte[] DataToEncrypt = UTF8.GetBytes(Message);
        try
        {
            ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
            Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
        }
        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }
        return Convert.ToBase64String(Results);
    }

}

