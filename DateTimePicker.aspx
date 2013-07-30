<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DateTimePicker.aspx.cs" Inherits="DateTimePicker" %>

<%@ Register assembly="Gaia.WebWidgets.Extensions" namespace="Gaia.WebWidgets.Extensions" tagprefix="gaia" %>
<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <MKB:TimeSelector ID="TimeSelector1" runat="server" AllowSecondEditing="True" 
            BorderColor="Silver" Font-Bold="True">
        </MKB:TimeSelector>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        
        <MKB:TimeSelector ID="TimeSelector2" runat="server" AllowSecondEditing="True" 
            BorderColor="Silver" Font-Bold="True">
        </MKB:TimeSelector>
        <br />
        <br />
      
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
    </form>
</body>
</html>
