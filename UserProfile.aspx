<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<%@ Register Assembly="Gaia.WebWidgets" Namespace="Gaia.WebWidgets" TagPrefix="gaia" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:GridView ID="gvImages" CssClass="Gridview" runat="server" AutoGenerateColumns="False">
 

 
<Columns>
 

 
<asp:TemplateField HeaderText="Image">

 
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl='<%# "ImageHandler.ashx?ImID="+ Eval("image_id") %>' Height="150px" Width="150px"/>
</ItemTemplate>
 
</asp:TemplateField>
 
</Columns>
 
</asp:GridView>

      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="UpdateProfileButton" runat="server" Height="28px" 
            onclick="UpdateProfileButton_Click" Text="Update Profile" Width="169px" />
        
        <br />
        <br />
        <asp:FileUpload ID="fileuploadImage" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" 
            onclick="btnUpload_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="AddParkingSpaceButton" runat="server" Height="34px" 
          Text="Add Your Space" Width="330px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="34px" 
            Text="Find A Space" Width="331px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
