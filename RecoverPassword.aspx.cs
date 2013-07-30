using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;



using System.Security;
using System.Security.Cryptography;


public partial class RecoverPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = (string)(Session["User"]);
    }
    protected void RecoverPassbtn_Click(object sender, EventArgs e)
    {
        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();
        try
        {
            string SQLQuery = "UPDATE SignUp set Password=\'" + EncryptData(RecoverPasstxt.Text) + "\' where EmailAddress=\'" + Session["User"] + "\'";
            mycmd = new SqlCommand(SQLQuery, conn);

            mycmd.ExecuteNonQuery();
            conn.Close();
            msglbl.Text += "Your Password has been changed!";

        }//try


        catch (Exception ex)
        {
            msglbl.Text = "Error: " + ex.Message;

        }//catch

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
        }//try
        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }//finally
        return Convert.ToBase64String(Results);
    }//encrypt
}