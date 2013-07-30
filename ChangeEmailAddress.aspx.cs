using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;

using System.Security;
using System.Security.Cryptography;

public partial class ChangeEmailAddress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangeEmailbtn_Click(object sender, EventArgs e)
    {
        String email = (string)Session["User"];
        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();

        try
        {

            String SQLQuery = "SELECT COUNT(*) Password FROM SignUp where Password=\'" + EncryptData(txtPassword.Text) + "\'";

            SqlCommand command = new SqlCommand(SQLQuery, conn);

            int count = Convert.ToInt32(command.ExecuteScalar());


            if (count == 1)
            {
                SQLQuery = "UPDATE SignUp set EmailAddress=\'" + txtEmailAddress.Text + "\' where EmailAddress=\'" + Session["User"] + "\'";

                command = new SqlCommand(SQLQuery, conn);
               
                command.ExecuteNonQuery();


                SqlCommand cmm = new SqlCommand(SQLQuery, conn);

                SQLQuery = "UPDATE UserAccount set EmailAddress=\'" + txtEmailAddress.Text + "\' where EmailAddress=\'" + Session["User"] + "\'";

               
                cmm.ExecuteNonQuery();

            }


            else LabelStatus.Text = "Password not matched";

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
        }//try
        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }//finally
        return Convert.ToBase64String(Results);
    }//en

}