<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeEmailAddress.aspx.cs" Inherits="ChangeEmailAddress" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    <br />
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="Current Pass"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="ChangeEmailbtn" runat="server" onclick="ChangeEmailbtn_Click" 
            Text="Submit" />
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
