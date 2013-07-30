<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountInformation.aspx.cs" Inherits="AccountInformation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <h3>Profile Settings</h3>

        <div>

        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
<h3>Account Information</h3>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="fisrtNameRF" runat="server" 
                ControlToValidate="txtFirstName" ErrorMessage="Fisrt Name is Required"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="LastNameRF" runat="server" 
                ControlToValidate="txtLastName" ErrorMessage="Last Name is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="FirstNameREV" runat="server" 
                ErrorMessage="Enter valid first name" 
                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" 
                ControlToValidate="txtFirstName"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="LastNameREV" runat="server" 
                ErrorMessage="Enter valid last name" 
                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" 
                ControlToValidate="txtLastName"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" Height="24px" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server" Height="27px" 
                style="margin-bottom: 0px" Width="152px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Display Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDisplayName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="DisplayName" runat="server" 
                ErrorMessage="RegularExpressionValidator" 
                ControlToValidate="txtDisplayName" ValidationExpression="[A-Za-z][A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Profile Picture"></asp:Label>
            <br />
            <br />
            <asp:RadioButtonList ID="PicOptionRadioBtn" runat="server" Width="144px">
            <asp:ListItem>Uploaded Photo</asp:ListItem>
            <asp:ListItem>Anonymous</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Photo Upload"></asp:Label>
            <br />
            <asp:FileUpload ID="PicUpload" runat="server" />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                ErrorMessage="RegularExpressionValidator" ControlToValidate="PicUpload" 
                ValidationExpression="^.+(.jpg|.JPG|.gif|.GIF|.jpeg|JPEG)$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="PassCV" runat="server" ControlToCompare="txtNewPass" 
                ControlToValidate="txtConfirmPass" ErrorMessage="Password not matched."></asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Day" runat="server"></asp:TextBox>
            <asp:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                    TargetControlID="Day"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "31"/>

            
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Month" runat="server"></asp:TextBox>
            
<asp:NumericUpDownExtender ID="NumericUpDownExtender2" runat="server"
                    TargetControlID="Month"
                     Width="120"
                     RefValues="Jan;Feb;Mar;Apr;May;Jun;Jul;Aug;Sep;Oct;Nov;Dec"
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                    />

           
&nbsp;&nbsp;
            <asp:TextBox ID="Year" runat="server"></asp:TextBox>
             <asp:NumericUpDownExtender ID="NumericUpDownExtender3" runat="server"
                    TargetControlID="Year"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1990"
                     Maximum = "2013"/>
             
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br /> </div>
            <h3>Contact Details</h3>
            <br />
   
    <asp:Label ID="Label9" runat="server" Text="Email Address"></asp:Label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <asp:TextBox
        ID="txtEmailaddress" runat="server" Text= '<%# Session["email"] %>'></asp:TextBox>
        <asp:RegularExpressionValidator ID="emailREV" runat="server" 
            ControlToValidate="txtEmailaddress" ErrorMessage="Enter valid email address" 
            ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/ChangeEmailAddress.aspx">Change Email Address</asp:HyperLink>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Contact No."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
        
        <br />
        <asp:Label ID="Label11" runat="server" Text="Alternate No."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAlernateNo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="Label12" runat="server" Text="Personal Website"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtWebsite" runat="server"></asp:TextBox>
        <br />
        <h3>Home Address</h3>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Country"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="CountryDropDownList" runat="server">
         <asp:ListItem>United Kindoms</asp:ListItem>
        <asp:ListItem>Canada</asp:ListItem>
        <asp:ListItem>Turkey</asp:ListItem>
        <asp:ListItem>Pakistan</asp:ListItem>
        <asp:ListItem>India</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <br />
        
        <br />
        <asp:Label ID="Label17" runat="server" Text="House Name/No."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHouseNo" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Text="Street Address"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtStrret" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label19" runat="server" Text="City"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        
        
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <h3>Additional Information</h3>
        <asp:Label ID="Label13" runat="server" Text="Time Zone"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="TimeZoneDropDownList" runat="server">
        <asp:ListItem>(GMT) London</asp:ListItem>
        <asp:ListItem>(GMT+6:00) Dhaka</asp:ListItem>
        <asp:ListItem>(GMT+4:00) Singapore</asp:ListItem>
        <asp:ListItem>(GMT-4:00) Pakistan</asp:ListItem>
        <asp:ListItem>(GMT-4:30) India </asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="Gender"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="GenderDropDownList" runat="server">
        <asp:ListItem>Male</asp:ListItem>
      <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Occupation"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="OccupationDropDownList" runat="server">
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>Teacher</asp:ListItem>
        <asp:ListItem>Medicine</asp:ListItem>
        <asp:ListItem>Business</asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" 
         />
        <br />
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/DisableYourAccount.aspx">Disable Your Account</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </div>
    </form>
</body>
</html>
