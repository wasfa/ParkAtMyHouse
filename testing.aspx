<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="CarCheckBox" runat="server"  Text="Cars"/>
        <br />
        <br />
        <asp:RadioButtonList ID="CancelRadioButtonList" runat="server" >
    <asp:ListItem Text="Flexible: Full refund 1 day prior to the start date of the booking (Recommended)" Value="Flexiable"></asp:ListItem>
    <asp:ListItem Text="Moderate: Full refund 3 days prior to the start date of the booking" Value="Moderate"></asp:ListItem>
    <asp:ListItem Text="Strict: 70% refund 14 days prior to the start date of the booking" Value="Strict"></asp:ListItem>
    </asp:RadioButtonList>
        <br />
        <br />
        <br />
     <asp:CheckBoxList ID="FacilitiesCheckBoxList" runat="server" Width="219px">
    <asp:ListItem Text="24/7 access" Value="24/7 access"></asp:ListItem>
    <asp:ListItem Text="Car wash available" Value="Car wash available"></asp:ListItem>
    <asp:ListItem Text="Security gates" Value="Security gates"></asp:ListItem>
    <asp:ListItem Text="Security guards" Value="Security guards"></asp:ListItem>
    <asp:ListItem Text="Sheltered parking" Value="Sheltered parking"></asp:ListItem>
    <asp:ListItem Text="Underground parking" Value="Underground parking"></asp:ListItem>
    </asp:CheckBoxList>
        
        <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
