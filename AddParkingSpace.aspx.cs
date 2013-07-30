using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlTypes;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class AddParkingSpace : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelStatus.Text =(string) Session["UserName"];
    } //pageload
    protected void Button1_Click(object sender, EventArgs e)
    {
          String constr = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
        SqlCommand mycmd = new SqlCommand();
        mycmd.Connection = conn;
       
        conn.Open();



        try
        {
            string str = "";
            if (CarCheckBox.Checked)
            { str = "true"; }
            else
            { str = "false"; }


            string str1 = "";
            if (BikesCheckBox.Checked)
            { str = "true"; }
            else
            { str = "false"; }



            string str2 = "";
            if (VehiclesCheckBox.Checked)
            { str = "true"; }
            else
            { str = "false"; }







                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Category";
                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Property";
                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Spaces";
                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Country";

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@OrganizationalName";

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@HouseName";

                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Street";

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@City";

                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@State";

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@PostalCode";

                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@Car";

                SqlParameter parama = new SqlParameter();
                parama.ParameterName = "@LargeVehicles";

                SqlParameter paramb= new SqlParameter();
                paramb.ParameterName = "@Bikes";


                SqlParameter param12 = new SqlParameter();
                param12.ParameterName = "@Bike_hour";

                SqlParameter param13 = new SqlParameter();
                param13.ParameterName = "@Bike_day";

               // SqlParameter param14 = new SqlParameter();
              //  param14.ParameterName = "@Bike_week";

                SqlParameter param15 = new SqlParameter();
                param15.ParameterName = "@Bike_month";

                SqlParameter param16 = new SqlParameter();
                param16.ParameterName = "@Car_hour";


                SqlParameter param17 = new SqlParameter();
                param17.ParameterName = "@Car_day";

                SqlParameter param18 = new SqlParameter();
                param18.ParameterName = "@Car_week";

                SqlParameter param19 = new SqlParameter();
                param19.ParameterName = "@Car_month";

                SqlParameter param20 = new SqlParameter();
                param20.ParameterName = "@RentalPrice";


                SqlParameter param21 = new SqlParameter();
                param21.ParameterName = "@Cancellation";



                SqlParameter param22 = new SqlParameter();
                param22.ParameterName = "@Facilities";



                SqlParameter param23 = new SqlParameter();
                param23.ParameterName = "@FacilityDescription";



               SqlParameter param24 = new SqlParameter();
               param24.ParameterName = "@Instructions";


                SqlParameter param25 = new SqlParameter();
                param25.ParameterName = "@InstantBooking";


                 // SqlParameter param26 = new SqlParameter();
               //  param26.ParameterName = "@Attactment";



                param1.Value = CategoryDropDownList.Text;
                param2.Value = PropertyDropDownList.Text;
                param3.Value = txtAvailableSpaces.Text;
                param4.Value = CountryDropDownList.Text;

                param5.Value = txtOrganization.Text;
                param6.Value = txtHouseNo.Text;

                param7.Value = txtStreet.Text;
                param8.Value = txtCity.Text;

                param9.Value = txtState.Text;
                param10.Value = txtPostCode.Text;

                param11.Value = str;
                paramb.Value = str1;
                parama.Value = str2;


                param12.Value = bike_hour.Text;

                param13.Value = Bike_day.Text;
              //  param14.Value = Bike_week.Text;

                param15.Value = Bike_month.Text;
                param16.Value = Car_hour.Text;

                param17.Value = car_day.Text;
                param18.Value = Car_week.Text;

                param19.Value = Car_month.Text;

                param20.Value = txtRentalPrice.Text;

                param21.Value = CancelRadioButtonList.SelectedValue;
                param22.Value = FacilitiesCheckBoxList.SelectedItem.Text;

                param23.Value = FacilitiesDescription.Text;
               param24.Value = txtInstructions.Text;

                param25.Value = InstantCheckBox.Text;
                //  param26.Value=






            /*

                SqlCommand cmm = new SqlCommand("INSERT INTO AddSpace Category=@Category, Property=@Property, Spaces=@Spaces,Country=@Country,OrganizationalName=@OrganizationalName, " +
                  "HouseName=@HouseName, Street=@Street, City=@City, State=@State, PostalCode=@PostalCode, Vehicles=@Vehicles, Bike_hour=@Bike_hour, " +
                  "Bike_day=@Bike_day, Bike_week=@Bike_week, Bike_month=@Bike_month, Car_hour=@Car_hour, Car_day=@Car_day, Car_week=@Car_week, Car_month=@Car_month,RentalPrice=@RentalPrice, Cancellation=@Cancellation, Facilities=@Facilities,FacilityDescription=@FacilityDescription,InstantBooking=@InstantBooking  WHERE EmailAddress=\'"
                         + Session["userName"].ToString() + "\'", conn);
             */

                String SQLInsert = " INSERT INTO AddSpaces (Category,Property,Spaces,Country,OrganizationalName,HouseName,Street,City,State,PostalCode,Bike_hour,Bike_day,Bike_month,Car_hour,Car_day,Car_week,Car_month,RentalPrice,Cancellation,Facilities,FacilityDescription,InstantBooking,Car,Bikes,LargeVehicles) VALUES (@Category,@Property,@Spaces,@Country,@OrganizationalName,@HouseName,@Street,@City,@State,@PostalCode,@Bike_hour,@Bike_day,@Bike_month,@Car_hour,@Car_day,@Car_week,@Car_month,@RentalPrice,@Cancellation,@Facilities,@FacilityDescription,@InstantBooking,@Car,@Bikes,@LargeVehicles)";

                SqlCommand cmm = new SqlCommand(SQLInsert,conn);
            




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
                cmm.Parameters.Add(parama);
                cmm.Parameters.Add(paramb);
                cmm.Parameters.Add(param12);
                cmm.Parameters.Add(param13);
               // cmm.Parameters.Add(param14);
                cmm.Parameters.Add(param15);
                cmm.Parameters.Add(param16);
                cmm.Parameters.Add(param17);
                cmm.Parameters.Add(param18);
                cmm.Parameters.Add(param19);
                cmm.Parameters.Add(param20);
                cmm.Parameters.Add(param21);
                cmm.Parameters.Add(param22);
                cmm.Parameters.Add(param23);
               // cmm.Parameters.Add(param24);
                cmm.Parameters.Add(param25);


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

    }//btn
}//class