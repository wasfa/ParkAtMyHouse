<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </h2>
    <p>
        Enter Date&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1"
            runat="server" Height="25px" ImageUrl="~/Images/calendar_icon.png" 
            Width="25px" />
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
            Format="dd/MM/yyyy" PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
            TargetControlID="TextBox1">
            </asp:CalendarExtender>
    </p>
</asp:Content>
