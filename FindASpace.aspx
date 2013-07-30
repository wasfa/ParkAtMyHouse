<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindASpace.aspx.cs" Inherits="FindASpace" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> 
<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>

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
   <asp:Label ID="Label1" runat="server" Text="Where would you like to park?"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1"
        runat="server" Height="25px" ImageUrl="~/Images/calendar_icon.png" 
        Width="25px" />  
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
        PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
        TargetControlID="TextBox1">
    </asp:CalendarExtender>  
        	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:DropDownList ID="DropDownList2" runat="server">
   <asp:ListItem>12:00 am</asp:ListItem>
   <asp:ListItem>12:30 am</asp:ListItem>
   <asp:ListItem>1:00 am</asp:ListItem>
   <asp:ListItem>1:30 am</asp:ListItem>
   <asp:ListItem>2:00 am</asp:ListItem>
   <asp:ListItem>2:30 am</asp:ListItem>
   <asp:ListItem>3:00 am</asp:ListItem>
   <asp:ListItem>3:30 am</asp:ListItem>
   <asp:ListItem>4:00 am</asp:ListItem>
   <asp:ListItem>4:30 am</asp:ListItem>
   <asp:ListItem>5:00 am</asp:ListItem>
   <asp:ListItem>5:30 am</asp:ListItem>
   <asp:ListItem>6:00 am</asp:ListItem>
   <asp:ListItem>6:30 am</asp:ListItem>
   <asp:ListItem>7:00 am</asp:ListItem>
   <asp:ListItem>7:30 am</asp:ListItem>
   <asp:ListItem>8:00 am</asp:ListItem>
   <asp:ListItem>8:30 am</asp:ListItem>
   <asp:ListItem>9:00 am</asp:ListItem>
   <asp:ListItem>9:30 am</asp:ListItem>
   <asp:ListItem>10:00 am</asp:ListItem>
   <asp:ListItem>10:30 am</asp:ListItem>
   <asp:ListItem>11:00 am</asp:ListItem>
   <asp:ListItem>11:30 am </asp:ListItem>
   <asp:ListItem>12:00 pm</asp:ListItem>
   <asp:ListItem>12:30 pm</asp:ListItem>
   <asp:ListItem>1:00 pm</asp:ListItem>
   <asp:ListItem>1:30 pm</asp:ListItem>
   <asp:ListItem>2:00 pm</asp:ListItem>
   <asp:ListItem>2:30 pm</asp:ListItem>
   <asp:ListItem>3:30 pm</asp:ListItem>
   <asp:ListItem>4:00 pm</asp:ListItem>
   <asp:ListItem>4:30 pm</asp:ListItem>
   <asp:ListItem>5:00 pm</asp:ListItem>
   <asp:ListItem>5:30 pm</asp:ListItem>
   <asp:ListItem>6:00 pm</asp:ListItem>
   <asp:ListItem>6:30 pm</asp:ListItem>
   <asp:ListItem>7:00 pm</asp:ListItem>
   <asp:ListItem>7:30 pm</asp:ListItem>
   <asp:ListItem>8:00 pm</asp:ListItem>
   <asp:ListItem>8:30 pm</asp:ListItem>
   <asp:ListItem>9:00 pm</asp:ListItem>
   <asp:ListItem>9:30 pm</asp:ListItem>
   <asp:ListItem>10:00 pm</asp:ListItem>
   <asp:ListItem>10:30 pm </asp:ListItem>
   <asp:ListItem>11:00 pm</asp:ListItem>
   <asp:ListItem>11:30pm</asp:ListItem>
   </asp:DropDownList>

<br />
   <br />
   <asp:TextBox ID="Location" runat="server" Height="38px" Width="248px"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Untill"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton2"
        runat="server" Height="25px" ImageUrl="~/Images/calendar_icon.png" 
        Width="25px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
        Format="dd/MM/yyyy" PopupButtonID="ImageButton2" PopupPosition="BottomRight"  TargetControlID="TextBox2">
        </asp:CalendarExtender>
        
        
        	
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
  <asp:ListItem>12:00 am</asp:ListItem>
   <asp:ListItem>12:30 am</asp:ListItem>
   <asp:ListItem>1:00 am</asp:ListItem>
   <asp:ListItem>1:30 am</asp:ListItem>
   <asp:ListItem>2:00 am</asp:ListItem>
   <asp:ListItem>2:30 am</asp:ListItem>
   <asp:ListItem>3:00 am</asp:ListItem>
   <asp:ListItem>3:30 am</asp:ListItem>
   <asp:ListItem>4:00 am</asp:ListItem>
   <asp:ListItem>4:30 am</asp:ListItem>
   <asp:ListItem>5:00 am</asp:ListItem>
   <asp:ListItem>5:30 am</asp:ListItem>
   <asp:ListItem>6:00 am</asp:ListItem>
   <asp:ListItem>6:30 am</asp:ListItem>
   <asp:ListItem>7:00 am</asp:ListItem>
   <asp:ListItem>7:30 am</asp:ListItem>
   <asp:ListItem>8:00 am</asp:ListItem>
   <asp:ListItem>8:30 am</asp:ListItem>
   <asp:ListItem>9:00 am</asp:ListItem>
   <asp:ListItem>9:30 am</asp:ListItem>
   <asp:ListItem>10:00 am</asp:ListItem>
   <asp:ListItem>10:30 am</asp:ListItem>
   <asp:ListItem>11:00 am</asp:ListItem>
   <asp:ListItem>11:30 am </asp:ListItem>
   <asp:ListItem>12:00 pm</asp:ListItem>
   <asp:ListItem>12:30 pm</asp:ListItem>
   <asp:ListItem>1:00 pm</asp:ListItem>
   <asp:ListItem>1:30 pm</asp:ListItem>
   <asp:ListItem>2:00 pm</asp:ListItem>
   <asp:ListItem>2:30 pm</asp:ListItem>
   <asp:ListItem>3:30 pm</asp:ListItem>
   <asp:ListItem>4:00 pm</asp:ListItem>
   <asp:ListItem>4:30 pm</asp:ListItem>
   <asp:ListItem>5:00 pm</asp:ListItem>
   <asp:ListItem>5:30 pm</asp:ListItem>
   <asp:ListItem>6:00 pm</asp:ListItem>
   <asp:ListItem>6:30 pm</asp:ListItem>
   <asp:ListItem>7:00 pm</asp:ListItem>
   <asp:ListItem>7:30 pm</asp:ListItem>
   <asp:ListItem>8:00 pm</asp:ListItem>
   <asp:ListItem>8:30 pm</asp:ListItem>
   <asp:ListItem>9:00 pm</asp:ListItem>
   <asp:ListItem>9:30 pm</asp:ListItem>
   <asp:ListItem>10:00 pm</asp:ListItem>
   <asp:ListItem>10:30 pm </asp:ListItem>
   <asp:ListItem>11:00 pm</asp:ListItem>
   <asp:ListItem>11:30pm</asp:ListItem>
        </asp:DropDownList>


        
        
        <br />

        <asp:Label ID="Label2" runat="server" Text="No of Spaces"></asp:Label>

        <br />

        <asp:TextBox ID="SpacesTextBox" runat="server"></asp:TextBox>
   <asp:NumericUpDownExtender ID="NumericUpDownExtender2" runat="server"
                    TargetControlID="SpacesTextBox"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "1000" />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="FindSpaceButton" runat="server" Height="37px" 
            onclick="FindSpaceButton_Click" Text="Find Me A Space" Width="207px" />
    </div>
    </form>
</body>
</html>
