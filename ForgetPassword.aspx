<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:Label ID="EmailLabel" runat="server" Text="Enter Your Email Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
        <asp:Label ID="msgLabel" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="RequestButton" runat="server" onclick="RequestButton_Click" 
            style="height: 26px" Text="Request" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
