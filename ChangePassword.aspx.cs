using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;



using System.Security;
using System.Security.Cryptography;



public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String email = (string)Session["User"];

    }//page_load
    /* protected void btn_update_Click(object sender, EventArgs e)
     {
         String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
         SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
         SqlCommand mycmd = new SqlCommand();
         mycmd.Connection = conn;
         byte up;
         conn.Open();

            constr = "select * from SignUp ";
             mycmd = new SqlCommand(constr, conn);
             SqlDataReader reader = mycmd.ExecuteReader();
             while (reader.Read())
             {
                 if (txt_cpassword.Text == reader["Password"].ToString())
                 {
                     up = 1;
                 }//if
             }//while
             reader.Close();
             conn.Close();
             if (up == 1)
             {
                 conn.Open();
                 constr = "update SignUp set Password=@Password where UserName='" + Session["UserName"].ToString()+ "'";
                 mycmd = new SqlCommand(constr, conn);
                 conn.Parameters.(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                 conn.Parameters["@Password"].Value = txt_npassword.Text;


                 int numrow = Convert.ToInt32(mycmd.ExecuteNonQuery());
                 conn.Close();
                 lbl_msg.Text = "Password changed Successfully";
             }//if
             else
             {
                 lbl_msg.Text = "Please enter correct Current password";
             }//else
         } */





    protected void Button1_Click(object sender, EventArgs e)
    {


        String email = (string)Session["User"];
        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();



        try
        {



         //  String SQLQuery = "SELECT COUNT(*) Password FROM SignUp where Password=\'" + EncryptData(OldPasswordTextBox.Text) + "\'";



            String SQLQuery = "SELECT COUNT(*) Password FROM SignUp where Password=\'" + EncryptData(OldPasswordTextBox.Text)  + "\'";
            
            //   "\' AND  Password= \'" + Password + "\'";

            SqlCommand command = new SqlCommand(SQLQuery, conn);

            int count = Convert.ToInt32(command.ExecuteScalar());


            if (count == 1)
            {
                SQLQuery = "UPDATE SignUp set Password=\'" + EncryptData(NewPasswordTextBox.Text) + "\' where Password=\'" + EncryptData(OldPasswordTextBox.Text) + "\' AND  EmailAddress= \'" + email + "\'";

                command = new SqlCommand(SQLQuery, conn);
                command.ExecuteNonQuery();
                //command.Parameters.AddWithValue("@Password",NewPasswordTextBox.Text);
                // command.Parameters["@Password"].Value = NewPasswordTextBox.Text;


                //count = Convert.ToInt32(command.ExecuteScalar());
                conn.Close();
                msgLabel.Text += "Your Password has been changed!";

            }//if 



            else
                msgLabel.Text += "Password not matched-Try again";
        }//if-1

        catch (Exception ex)
        {
            msgLabel.Text = "Error: " + ex.Message;

        }//catch

    }//btn_click

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
   


