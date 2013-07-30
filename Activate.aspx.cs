using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Activate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

     //   Request.QueryString["Token"];




    }



    protected void activateAccount_Click(object sender, EventArgs e)
    {
        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
         SqlDataReader Dr;
        conn.Open();
        Dr = mycmd.ExecuteReader();
        while(Dr.Read())
        {
          
        String SQLQuery = "SELECT COUNT(*) ActivateToken FROM SignUp1";

        if(   Dr["ActivateToken"]== Request.QueryString["Token"])

        {

       SQLQuery = " Update SignUp1 set Active=1";
        SqlCommand command = new SqlCommand(SQLQuery, conn);
        int count = Convert.ToInt32(command.ExecuteScalar());
    
    }//if
}//while

    }//activate_account
}//class