<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="RecoverPasslbl" runat="server" Text="Enter new Password"></asp:Label> 
        <asp:TextBox ID="RecoverPasstxt"
            runat="server"></asp:TextBox>
            <asp:Button ID="RecoverPassbtn" runat="server" Text="Submit" 
            onclick="RecoverPassbtn_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="msglbl" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
