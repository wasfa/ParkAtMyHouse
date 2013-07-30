<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExtensiveSearch.aspx.cs" Inherits="ExtensiveSearch" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Width="926px" BackColor="#CCCCCC" 
        BorderStyle="Solid" Height="432px">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
        </asp:ToolkitScriptManager>
        <br />
     <asp:TextBox ID="LocationTextBox" runat="server" Height="33px" Width="297px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
            TargetControlId="LocationTextBox" WatermarkText="Type your Location here">
        </asp:TextBoxWatermarkExtender>
        <br />
        <br />
        <asp:TextBox ID="FromTextBox" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
            ImageUrl="~/Images/calendar_icon.png" Width="25px" />
        <asp:CalendarExtender ID="FromCalendarExtender" runat="server" 
            Format="dd/MM/yyyy" PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
            TargetControlID="FromTextBox">
        </asp:CalendarExtender>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" 
            TargetControlId="FromTextBox" WatermarkText="From">
        </asp:TextBoxWatermarkExtender>
        <br />
        <br />
        <MKB:TimeSelector ID="TimeSelector3" runat="server" AllowSecondEditing="True" 
            BorderColor="Silver" Font-Bold="True">
        </MKB:TimeSelector>
        <br />
        <asp:TextBox ID="UntillTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" 
            ImageUrl="~/Images/calendar_icon.png" Width="25px" />
        <asp:CalendarExtender ID="UntillCalendarExtender" runat="server" 
            Format="dd/MM/yyyy" PopupButtonID="ImageButton2" PopupPosition="BottomRight" 
            TargetControlID="UntillTextBox">
        </asp:CalendarExtender>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
            TargetControlId="UntillTextBox" WatermarkText="Untill">
        </asp:TextBoxWatermarkExtender>
        <br />
        <br />
        <MKB:TimeSelector ID="TimeSelector2" runat="server" AllowSecondEditing="True" 
            BorderColor="Silver" Font-Bold="True">
        </MKB:TimeSelector>
        <br />
        <br />
        <asp:Button ID="ExtensiveSearchButton" runat="server" 
            onclick="ExtensiveSearchButton_Click" Text="Search" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ParkingProjectConnectionString %>" 
            SelectCommand="SELECT * FROM [ParkingSpaceTable]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LocationAddress" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="LocationName" HeaderText="Parking Area" 
                    SortExpression="LocationName" />
                <asp:BoundField DataField="LocationAddress" HeaderText="Parking Address" 
                    ReadOnly="True" SortExpression="LocationAddress" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </asp:Panel>
</asp:Content>

