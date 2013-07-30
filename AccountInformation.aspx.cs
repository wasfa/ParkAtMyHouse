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


public partial class AccountInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


       string email=  (string)(Session["EmailAddress"]);
       if (email != null)
       {
           txtEmailaddress.Text = email;
           LabelStatus.Text = "Enter the required fields";

       }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
       
        conn.Open();



        try
        {
            String SQLQuery = "SELECT COUNT(*) EmailAddress FROM SignUp where EmailAddress=\'" + txtEmailaddress.Text + "\'";

            SqlCommand command = new SqlCommand(SQLQuery, conn);
            int counter = Convert.ToInt32(command.ExecuteScalar());



            if (counter == 1)
            {

                LabelStatus.Text = "This is your email ID";

                SqlParameter param0 = new SqlParameter();
                param0.ParameterName = "@FirstName";
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@LastName";
                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@DisplayName";
                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@CompanyName";
                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@NewPass";
                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Birth_Day";
                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Bith_Month";
                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Birth_Year";
                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@PrimaryNo";
                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@AlternateNo";
                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@Website";
                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@Country";
                SqlParameter param12 = new SqlParameter();
                param12.ParameterName = "@HouseName";
                SqlParameter param13 = new SqlParameter();
                param13.ParameterName = "@Street";
                SqlParameter param14 = new SqlParameter();
                param14.ParameterName = "@City";
                SqlParameter param15 = new SqlParameter();
                param15.ParameterName = "@TimeZone";
                SqlParameter param16 = new SqlParameter();
                param16.ParameterName = "@Gender";
                SqlParameter param17 = new SqlParameter();
                param17.ParameterName = "@Occupation";


                param0.Value = txtFirstName.Text;            //FirstName
                param1.Value = txtLastName.Text;             //LastName
                param2.Value = txtDisplayName.Text;          //DisplayName
                param3.Value = txtCompanyName.Text;          //CompanyName
                param4.Value = EncryptData(txtNewPass.Text);              //NewPass
                param5.Value = Day.Text;                     //Birth_Day
                param6.Value = Month.Text;                   //Bith_Month
                param7.Value = Year.Text;                    //Birth_Year
                param8.Value = txtContactNo.Text;            //PrimaryNo
                param9.Value = txtAlernateNo.Text;           //AlternateNo
                param10.Value = txtWebsite.Text;             //Website
                param11.Value = CountryDropDownList.Text;    //Country      
                param12.Value = txtHouseNo.Text;             //HouseName
                param13.Value = txtStrret.Text;              //Street
                param14.Value = txtCity.Text;                //City
                param15.Value = TimeZoneDropDownList.Text;   //TimeZone
                param16.Value = GenderDropDownList.Text;     //Gender
                param17.Value = OccupationDropDownList.Text; //Occupation


                SqlCommand cmm = new SqlCommand("UPDATE UserAccount set FirstName=@FirstName, LastName=@LastName, DisplayName=@DisplayName,CompanyName=@CompanyName,NewPass=@NewPass, " +
                "Birth_Day=@Birth_Day, Birth_Month=@Bith_Month, Birth_Year=@Birth_Year, PrimaryNo=@PrimaryNo, AlternateNo=@AlternateNo, Website=@Website, Country=@Country, " +
                "HouseName=@HouseName, Street=@Street, City=@City, TimeZone=@TimeZone, Gender=@Gender, Occupation=@Occupation  WHERE EmailAddress=\'"
                       + txtEmailaddress.Text + "\'", conn);

                cmm.Parameters.Add(param0);
                cmm.Parameters.Add(param1);
                cmm.Parameters.Add(param2);
                cmm.Parameters.Add(param3);
                cmm.Parameters.Add(param4);
                cmm.Parameters.Add(param5);
                cmm.Parameters.Add(param6);
                cmm.Parameters.Add(param7);
                cmm.Parameters.Add(param8);
                cmm.Parameters.Add(param9);
                cmm.Parameters.Add(param10);
                cmm.Parameters.Add(param11);
                cmm.Parameters.Add(param12);
                cmm.Parameters.Add(param13);
                cmm.Parameters.Add(param14);
                cmm.Parameters.Add(param15);
                cmm.Parameters.Add(param16);
                cmm.Parameters.Add(param17);

                cmm.ExecuteNonQuery();
                cmm.Parameters.Clear();




                SqlParameter param01 = new SqlParameter();
                param01.ParameterName = "@FirstName";
                SqlParameter param02 = new SqlParameter();
                param02.ParameterName = "@LastName";
                SqlParameter param03 = new SqlParameter();
                param03.ParameterName = "@NewPass";
                

                param01.Value = txtFirstName.Text;            //FirstName
                param02.Value = txtLastName.Text;             //LastName
                param03.Value = EncryptData(txtNewPass.Text);


                SqlCommand com = new SqlCommand("UPDATE SignUp set FirstName=@FirstName, LastName=@LastName,Password=@NewPass WHERE EmailAddress=\'"
                       + txtEmailaddress.Text + "\'", conn);



                com.Parameters.Add(param01);
                com.Parameters.Add(param02);
                com.Parameters.Add(param03);

                com.ExecuteNonQuery();
                com.Parameters.Clear();




               // SqlCommand com = new SqlCommand(SQLQuery, conn);

                // cmm.ExecuteNonQuery();

              //  SQLQuery = "Update SignUp set FirstName=\'" + txtFirstName.Text + "\'+ LastName=\'" + txtLastName.Text + "\' where EmailAddress=\'" + txtEmailaddress.Text + "\'";


               // com = new SqlCommand(SQLQuery, conn);

               // com.ExecuteNonQuery();
            }//try


        }


        catch (Exception ex)
        {
            LabelStatus.Text = "Error: " + ex.Message;
            LabelStatus.BackColor = System.Drawing.Color.Red;
            LabelStatus.ForeColor = System.Drawing.Color.White;
            LabelStatus.Visible = true;

        }//catch


        conn.Close();
    }//btn


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



}//class