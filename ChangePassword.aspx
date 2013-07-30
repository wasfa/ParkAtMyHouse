<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>
    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
    <asp:TextBox ID="OldPasswordTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="oldPasswordRFV" runat="server" 
        ControlToValidate="OldPasswordTextBox" 
        ErrorMessage="Enter current password to continue"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
    <asp:TextBox ID="NewPasswordTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="newPasswordRFV" runat="server" 
        ControlToValidate="NewPasswordTextBox" ErrorMessage="Enter new password"></asp:RequiredFieldValidator>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="NewPasswordTextBox" ControlToValidate="CPasswordTextBox" 
        ErrorMessage="Password not matched"></asp:CompareValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="CPasswordTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="CpasswordRFV" runat="server" 
        ControlToValidate="CPasswordTextBox" ErrorMessage="Re enter new password"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="msgLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Change Password" />
    <br />
</div>
</asp:Content>

