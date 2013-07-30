using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FindASpace : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FindSpaceButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExtensiveSerch.aspx");
    }
}