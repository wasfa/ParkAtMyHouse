<%@ WebHandler Language="C#" Class="ImageHandler" %>
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
using System.Web;
using System.Web.Configuration;
public class ImageHandler : IHttpHandler {


    String strcon = WebConfigurationManager.ConnectionStrings["ParkingProjectConnectionString"].ConnectionString;
    SqlConnection connection = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=\"C:\\Users\\Only 4 ME\\Documents\\Visual Studio 2010\\WebSites\\WebSite2\\App_Data\\ParkAtMyDriveDatabase.mdf\";Integrated Security=True;User Instance=True");
    
    public void ProcessRequest (HttpContext context) 
    {
        
        
        string querySqlStr = "";
        if (context.Request.QueryString["image_id"] != null)
        {
            querySqlStr = "select * from PictureTable where image_id=" + context.Request.QueryString["image_id"];
        }
        else
        {
            querySqlStr = "select * from PictureTable";
        }


 
//string Imagestring = context.Request.QueryString["ImID"];
 
//SqlConnection connection = new SqlConnection(strcon);
 

//SqlCommand command = new SqlCommand("select pic from PictureTable where image_id=" + Imagestring, connection);


SqlCommand command = new SqlCommand(strcon, connection);

SqlDataReader dr;


try
{
    connection.Open();
    dr=command.ExecuteReader();

    while (dr.Read())
    {
        byte[] image = dr.GetValue(0) as byte[];
        System.IO.MemoryStream ms = new System.IO.MemoryStream(image);
        ms.WriteTo(context.Response.OutputStream);
        ms.Flush();
        context.Response.OutputStream.Flush();
    }
    dr.Close();


}
finally
{
    connection.Close();
}
 
context.Response.End();
 
}//reuquest


    public bool IsReusable
    {
        get
        {
            return true;
        }
    }
} //handler
 


