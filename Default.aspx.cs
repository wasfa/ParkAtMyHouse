using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.StartDate = DateTime.Now;
        CalendarExtender2.StartDate = DateTime.Now;
        TextBox1.ForeColor = System.Drawing.Color.Gray;
        TextBox2.ForeColor = System.Drawing.Color.Gray;
        SearchTextBox.ForeColor = System.Drawing.Color.Gray;

  
        
    }//page_load


    protected void SearchTextBox_TextChanged(object sender, EventArgs e)
    {
        SearchTextBox.ForeColor = System.Drawing.Color.Green;
    }




    protected void SearchButton_Click(object sender, ImageClickEventArgs e)
    {
       

      //  Response.Redirect(String.Format("ExtensiveSearch.aspx?Location=" + SearchTextBox.Text + "&From=" + TextBox1.Text + "&Untill=" + TextBox2.Text, Server.UrlEncode(SearchTextBox.Text), Server.UrlEncode(TextBox1.Text), Server.UrlEncode(TextBox2.Text)));
       // Response.Redirect(String.Format("Default2.aspx?Location={0}&From={1}&Untill{2}", Server.UrlEncode(Location), Server.UrlEncode(from)));


         Session["SearchTextBox"] = SearchTextBox.Text;

        Session["TextBox1"] = TextBox1.Text;

         Session["TextBox2"] = TextBox2.Text; 

        Response.Redirect("ExtensiveSearch.aspx");

        
    }
    
    protected void Home_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:50196/WebSite2/Default.aspx");
    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:50196/WebSite2/signUp.aspx");
    }
}//class







