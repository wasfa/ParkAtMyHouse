using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;


using System.Security;
using System.Security.Cryptography;



public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!this.IsPostBack)
         //   ViewState["LoginErrors"] = 0;

       

        

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    if (YourValidationFunction(Login1.UserName, EncryptData(Login1.Password)))
        {
            e.Authenticated = true;
            Login1.Visible = false;
            MessageLabel.Text = "Successfully Logged In";
            Session["EmailAddress"] = Login1.UserName;
        }//if
        else
        {
            e.Authenticated = false;
        }//else
    }
   
    private bool YourValidationFunction(string UserName, string Password)
    {

      
        
        bool boolReturnValue = false;

       String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
       SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");

       String SQLQuery = "SELECT * FROM SignUp WHERE EmailAddress=\'" + UserName + "\' AND  Password= \'" +Password + "\'";
     
     
        SqlCommand command = new SqlCommand(SQLQuery, conn);
       SqlDataReader Dr;
        conn.Open();
        Dr = command.ExecuteReader();
        while(Dr.Read())
        {
            if ((UserName == Dr["EmailAddress"].ToString()) & (Password == Dr["Password"].ToString()))
            {
                boolReturnValue = true;
            }//if
            Dr.Close();
            return boolReturnValue;
        }//while
        return boolReturnValue;
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
