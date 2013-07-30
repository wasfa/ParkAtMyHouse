<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register Assembly="MSCaptcha" namespace="MSCaptcha" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="height: 572px; margin-left: 0px">
 
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;
        <br />
        &nbsp;
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="FirstNameRegularExpressionValidator" runat="server"
            ErrorMessage="Please enter correct First Name" 
            ControlToValidate="FirstNameTextBox" 
            ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
        &nbsp;<asp:RegularExpressionValidator ID="LastNameRegularExpressionValidator" 
            runat="server" ControlToValidate="LastNameTextBox" 
            ErrorMessage="Pleaseenter correct last name" 
            ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="FullNameLabel" runat="server" Text="Full Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="TitleDropDownList" runat="server">
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>MS</asp:ListItem>
        <asp:ListItem>Miss</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
        <asp:TextBoxWatermarkExtender ID="FirstNamewaterMarkExtendar" runat="server" TargetControlId="FirstNameTextBox" WatermarkText="First Name">
    </asp:TextBoxWatermarkExtender>
&nbsp;&nbsp;<asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
        <br />
        
<asp:TextBoxWatermarkExtender ID="LastNamewaterMarkExtendar" runat="server" TargetControlId="LastNameTextBox" WatermarkText="Last Name">
    </asp:TextBoxWatermarkExtender>
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="First Name is required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" 
            ControlToValidate="LastNameTextBox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
       
        <asp:Label ID="UserNameLabel" runat="server" Text="User Name"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
         <asp:Panel ID="PanelBaloon" runat="server"></asp:Panel>
        <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server"
        TargetControlID="UserNameTextBox"
        BalloonPopupControlID="PanelBaloon"
        Position="BottomRight" 
        BalloonStyle="Cloud"
        BalloonSize="Small"
     
        CustomClassName="oval"
        UseShadow="true" 
        ScrollBars="Auto"
        DisplayOnMouseOver="true"
        DisplayOnFocus="false"
        DisplayOnClick="true" />

    

         <asp:RegularExpressionValidator ID="UserNameRegularExpressionValidator" 
            runat="server" ControlToValidate="UserNameTextBox" 
            ErrorMessage="Please Enter a valid User Name" 
            ValidationExpression="[A-Za-z][A-Za-z0-9]*$"></asp:RegularExpressionValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="UserNameTextBox" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
         &nbsp;<br />
        <asp:Label ID="EmailAddressLabel" runat="server" Text="Email Address"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EmailAddressTextBox" runat="server" ></asp:TextBox>
         <asp:RegularExpressionValidator ID="EmailAddressRegularExpressionValidator" 
            runat="server" ControlToValidate="EmailAddressTextBox" 
            ErrorMessage="Please Enter a valid Email address" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

         &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="EmailReqiredFieldValidator" runat="server" 
            ControlToValidate="EmailAddressTextBox" 
            ErrorMessage="Email address is required"></asp:RequiredFieldValidator>
         <br />
        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" ontextchanged="PasswordTextBox_TextChanged" 
            ></asp:TextBox>
        
        <asp:PasswordStrength ID="PasswordTextBox_PasswordStrength" runat="server" 
            Enabled="True" TargetControlID="PasswordTextBox" PrefixText="Strength" 
            MinimumLowerCaseCharacters="3" MinimumNumericCharacters="1" 
            MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" 
            PreferredPasswordLength="7" RequiresUpperAndLowerCaseCharacters="True" >
        </asp:PasswordStrength>
        
        <br />
        
        <asp:Label ID="lblEncode" runat="server" Text="Label"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" 
            ControlToValidate="PasswordTextBox" 
            ErrorMessage="please enter password to proceed"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
        <asp:Label ID="FindUsLabel" runat="server" Text="How did you find us"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="FindUsDrooDownList" runat="server">
        <asp:ListItem>Google</asp:ListItem>
        <asp:ListItem>Word of mouth</asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
        <asp:Label ID="AdditionalDetailsLabel" runat="server" Text="Additional details"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AdditionalDetailsTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="Any further information about how you heard about us "></asp:Label>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:CaptchaControl ID="Captcha1" runat="server" CaptchaLenght="5" 
            CaptchaHeight="60" CaptchaWidth="255" CaptchaMinTimeout="5"
        CaptchaMaxTimeOut="240" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789" 
            FontColor="Red" CaptchaLineNoise="Medium"  BackColor="#999999" 
            BorderStyle="Double" CaptchaFontWarping="Medium" NoiseColor="ActiveCaptionText" 
            Width="254px"/>
        <asp:RequiredFieldValidator ID="CaptchaRFV" runat="server" 
            ControlToValidate="CaptchaTextBox" 
            ErrorMessage="You cannot proceed without entering captcha"></asp:RequiredFieldValidator>
<br />

        <asp:TextBox ID="CaptchaTextBox" runat="server" 
            ontextchanged="CaptchaTextBox_TextChanged"></asp:TextBox>&nbsp;&nbsp;<asp:Label ID="Label2"
            runat="server" Text="Label"></asp:Label>
       
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            oncheckedchanged="CheckBox1_CheckedChanged" />
        <asp:Button ID="Button1" runat="server" Text="Button" Enabled="False" 
            onclick="Button1_Click1" />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
     
    </div>
  
</asp:Content>

