<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Day" runat="server"></asp:TextBox> <asp:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                    TargetControlID="Day"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "31"/>
    </div>
    </form>
</body>
</html>
