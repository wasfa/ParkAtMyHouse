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

public partial class ExtensiveSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        FromCalendarExtender.StartDate = DateTime.Now;
        UntillCalendarExtender.StartDate = DateTime.Now;

      //  LocationTextBox.Text = Server.UrlDecode(Request.QueryString["Location"]);
     //   FromTextBox.Text = Server.UrlDecode(Request.QueryString["From"]);
    //    UntillTextBox.Text =Server.UrlDecode( Request.QueryString["Untill"]);



        LocationTextBox.Text = (string)(Session["SearchTextBox"]);
        FromTextBox.Text = (string)(Session["TextBox1"]);
        UntillTextBox.Text = (string)(Session["TextBox2"]);
        
     
    }
    protected void ExtensiveSearchButton_Click(object sender, EventArgs e)
    {

        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
        conn.Open();

        try
        {



            mycmd.CommandText = "Select * from ParkingSpaceTable where LocationName='" + LocationTextBox.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(mycmd);

            DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();




            // mycmd.ExecuteNonQuery();
            int n = Convert.ToInt32(mycmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            LabelStatus.Text = "Error: " + ex.Message;
            LabelStatus.BackColor = System.Drawing.Color.Red;
            LabelStatus.ForeColor = System.Drawing.Color.White;
            LabelStatus.Visible = false;

        }


        conn.Close();
    }
    protected void UntillTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}