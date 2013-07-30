<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisableYourAccount.aspx.cs" Inherits="DisableYourAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    <asp:TextBox ID="txtReasons" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="deactivatebtn" runat="server" onclick="deactivatebtn_Click" 
            Text="Deactivate" />
        <br />
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
