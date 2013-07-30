using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

using System.Security;
using System.Security.Cryptography;

public partial class DisableYourAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["EmailAddress"].ToString();
    }
    protected void deactivatebtn_Click(object sender, EventArgs e)
    {

        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();

        try
        {
            if (Session["EmailAddress"] != null)  {

                



                // LabelStatus.Text = "Press Disable Button to deactivatr your account";
                // Label2.Text = Email;
               //  String SQLQuery = "DELETE  FROM SignUp Where Password=\'" + EncryptData(txtPassword.Text) + "\' AND  EmailAddress= \'" + Session["email"]+ "\'";
                

                SqlParameter param0 = new SqlParameter();
                param0.ParameterName = "@Password";
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@EmailAddress";



                param0.Value = txtPassword.Text;           
                param1.Value = Session["EmailAddress"].ToString();


                SqlCommand cmm = new SqlCommand("DELETE FROM SignUp Where Password=@Password AND EmailAddress=@EmailAddress", conn);
                cmm.Parameters.Add(param0);
                cmm.Parameters.Add(param1);

                cmm.ExecuteNonQuery();
                cmm.Parameters.Clear();
/*
                string pass = txtPassword.Text;
                string email = (string)Session["EmailAddress"];

                String SQLQuery = "DELETE FROM SignUp Where Password=@pass AND EmailAddress=@email";
                SqlCommand dbComm = new SqlCommand(SQLQuery, new SqlConnection());
                dbComm.Parameters.Add("@pass", SqlDbType.NVarChar).Value = pass;
                dbComm.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
               
                
              //  String SQLQuery = "DELETE  FROM SignUp Where  EmailAddress=\'" + myvalue + "\'";
              
                dbComm = new SqlCommand(SQLQuery, conn);

               dbComm.ExecuteNonQuery();

 */
                LabelStatus.Text = "Your Account has been disabled";
 

            }

            else
                LabelStatus.Text = "Session time expires";
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


    public string sessionNane { get; set; }

    public string myvalue { get; set; }
}