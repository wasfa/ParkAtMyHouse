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
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Data.SqlClient;

public partial class UserProfile : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
    string str;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridData();
        }//if
    } //page_load
    protected void btnUpload_Click(object sender, EventArgs e)
       {
        if (fileuploadImage.HasFile)
{
int length = fileuploadImage.PostedFile.ContentLength;
byte[] imgbyte = new byte[length];
HttpPostedFile img = fileuploadImage.PostedFile;
img.InputStream.Read(imgbyte, 0, length);

SqlConnection connection = new SqlConnection(strcon);
connection.Open();
SqlCommand cmd = new SqlCommand("INSERT INTO PictureTable (pic) VALUES (@pic)", connection);

cmd.Parameters.Add("@pic", SqlDbType.Image).Value = imgbyte;
int count = cmd.ExecuteNonQuery();
connection.Close();
if (count == 1)
{
BindGridData();



    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage","javascript:alert('" + " image inserted successfully')", true);
}//if
        }//if
    }//btnup
    private void BindGridData()
{
SqlConnection connection = new SqlConnection(strcon);
SqlCommand command = new SqlCommand("SELECT pic,image_id from [PictureTable]",connection);
 
        SqlDataAdapter daimages = new SqlDataAdapter(command);
DataTable dt = new DataTable();
daimages.Fill(dt);
gvImages.DataSource = dt;
gvImages.DataBind();
gvImages.Attributes.Add("bordercolor", "black");
}//bindgrid






       
    
    protected void UpdateProfileButton_Click(object sender, EventArgs e)
    {
Response.Redirect("AccountInformation.aspx");
    }
   



}
