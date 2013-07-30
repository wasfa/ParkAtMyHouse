using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;

        conn.Open();


         try
        {
            string str = "";
            string str1 = "";
            int i;


            if (CarCheckBox.Checked)
            { str = "true"; }
            else
            { str = "false"; }



             ////////////////////////////////////////////////////////////////



            for (int j = 0; j <= FacilitiesCheckBoxList.Items.Count - 1; j++)
            {

                if (FacilitiesCheckBoxList.Items[j].Selected)
                {

                    if (str1 == "")
                    {
                        str1 = FacilitiesCheckBoxList.Items[j].Text;
                    }//if
                    else
                    {
                        str1 += "," + FacilitiesCheckBoxList.Items[j].Text;

                    }//else

                }//if
            }//for








                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Car";


                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Cancel";

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Facilies";





                  param1.Value = str;

                  param2.Value = CancelRadioButtonList.SelectedValue;

                  param3.Value = str1;




                  String SQLInsert = " INSERT INTO extra (Car,Cancel,Facilies) VALUES (@Car,@Cancel,@Facilies)";

                SqlCommand cmm = new SqlCommand(SQLInsert,conn);
            




                cmm.Parameters.Add(param1);
                cmm.Parameters.Add(param2);
                cmm.Parameters.Add(param3);

                cmm.ExecuteNonQuery();
                cmm.Parameters.Clear();

        }




         catch (Exception ex)
         {
             LabelStatus.Text = "Error: " + ex.Message;
             LabelStatus.BackColor = System.Drawing.Color.Red;
             LabelStatus.ForeColor = System.Drawing.Color.White;
             LabelStatus.Visible = true;

         }//catch


         conn.Close();



    }
}