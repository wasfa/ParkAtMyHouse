<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddParkingSpace.aspx.cs" Inherits="AddParkingSpace" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 694px">
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Label ID="HeadingLabel" runat="server" Text="Add Your Parking Space"></asp:Label>
        <br />
        <br />
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text="You are one step closer to making some extra money by renting out your parking space. Please fill in your parking space's details below in as much detail as possible to help drivers make up their minds on where best to park their vehicle."></asp:Label>
        <br />
        
         
                <asp:Label ID="Label1" runat="server" Text="Basic details"></asp:Label>
                <br />
        <br />
        <br />
        <asp:Label ID="public" runat="server" Text="Public"></asp:Label>
         <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server"
        TargetControlID="UserNameTextBox"
        BalloonPopupControlID="Panel1"
        Position="BottomRight" 
        BalloonStyle="Cloud"
        BalloonSize="Small"
     
        CustomClassName="oval"
        UseShadow="true" 
        ScrollBars="Auto"
        DisplayOnMouseOver="true"
        DisplayOnFocus="false"
        DisplayOnClick="true" />

                <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                <asp:DropDownList ID="CategoryDropDownList" runat="server">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>Private Driveway</asp:ListItem>
                <asp:ListItem>Shared DriveWay</asp:ListItem>
                <asp:ListItem>Private garage</asp:ListItem>
                <asp:ListItem>Public garage</asp:ListItem>
                <asp:ListItem>Private Parking lot</asp:ListItem>
                <asp:ListItem>Multi Level Parking lot</asp:ListItem>
        </asp:DropDownList>
                <asp:RequiredFieldValidator ID="CategoryRFV" runat="server" 
            ControlToValidate="CategoryDropDownList" ErrorMessage="Please Choose Category"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Type Of Property"></asp:Label>
                <asp:DropDownList ID="PropertyDropDownList" runat="server">
                <asp:ListItem>Please Select</asp:ListItem>
                 <asp:ListItem>Private Residence</asp:ListItem>
                <asp:ListItem>Office</asp:ListItem>
                <asp:ListItem>Place of Worship</asp:ListItem>
                <asp:ListItem>Retail</asp:ListItem>
                <asp:ListItem>Commercial Parking lot</asp:ListItem>
                <asp:ListItem>Academic Institution</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
                <asp:RequiredFieldValidator ID="PropertyRFV" runat="server" 
            ControlToValidate="PropertyDropDownList" 
            ErrorMessage="Please Choose type of Property"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Available spaces"></asp:Label>
        <asp:TextBox ID="txtAvailableSpaces" runat="server"></asp:TextBox>
        <asp:NumericUpDownExtender ID="NumericUpDownExtender10" runat="server"
                    TargetControlID="txtAvailableSpaces"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "500" />
        
        &nbsp;
        
        <br />
        <br />
          
        
        <asp:Label ID="Label4" runat="server" Text="Parking Space Address"></asp:Label>
        
        <br />
        
        <asp:Label ID="Label6" runat="server" 
            Text="Only the street name and first part of the postal code will be shown on your public parking space listing. Your full address will only be revealed to drivers that book and pay to rent your parking space."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
        <asp:DropDownList ID="CountryDropDownList" runat="server">
                <asp:ListItem>Please Select</asp:ListItem>
                <asp:ListItem>United states</asp:ListItem>
                <asp:ListItem>Cananda</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>Turkey</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="CountryRFV" runat="server" 
            ControlToValidate="CountryDropDownList" ErrorMessage="Choose your Country"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Organization Name"></asp:Label>
        <asp:TextBox ID="txtOrganization" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="House Name/No."></asp:Label>
        <asp:TextBox ID="txtHouseNo" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="HouseRFV" runat="server" 
            ControlToValidate="txtHouseNo" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Street Address"></asp:Label>
        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="County/State"></asp:Label>
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Postal code"></asp:Label>
      
                
                    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="PostalCodeRFV" runat="server" 
            ControlToValidate="txtPostCode" ErrorMessage="Enter your post code"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
      
                
                    <asp:Label ID="Label14" runat="server" Text="Vehicles accepted"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" 
                        Text="Please select the types of vehicles that can park in your space"></asp:Label>
                    <br />
                    <br />
                    
        <asp:CheckBox ID="CarCheckBox" runat="server" Text="Cars" />
        <br />
        <br />
        <asp:CheckBox ID="BikesCheckBox" runat="server" Text="Bikes" />
        <br />
        <br />
        <asp:CheckBox ID="VehiclesCheckBox" runat="server" Text="Large Vehicles" />
        <br />
    <br />
    <asp:Label ID="Label16" runat="server" Text="Pricing"></asp:Label>
             
            <br />
    <br />
    <asp:Label ID="Label17" runat="server" 
        Text="Please choose the hourly, daily, weekly and monthly prices that you wish to charge for using your parking space for each type of accepted vehicle"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label18" runat="server" Text="Bikes"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="bike_hour" runat="server"></asp:TextBox>
    <asp:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                    TargetControlID="bike_hour"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "500" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Bike_day" runat="server"></asp:TextBox>
 <asp:NumericUpDownExtender ID="NumericUpDownExtender3" runat="server"
                    TargetControlID="Bike_day"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "2"
                     Maximum = "1000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="Bike_week" runat="server"></asp:TextBox>
 <asp:NumericUpDownExtender ID="NumericUpDownExtender2" runat="server"
                    TargetControlID="Bike_week"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "5"
                     Maximum = "5000" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="Bike_month" runat="server"></asp:TextBox>
        <asp:NumericUpDownExtender ID="NumericUpDownExtender4" runat="server"
                    TargetControlID="Bike_month"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "10"
                     Maximum = "10000" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    <br />
    <asp:Label ID="Label19" runat="server" Text="Per hour"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label20" runat="server" Text="Per day"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label21" runat="server" Text="Per week"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" Text="Per Month"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label28" runat="server" Text="Cars"></asp:Label>
    <br />
    <br />
        <asp:TextBox ID="Car_hour" runat="server"></asp:TextBox>
        <asp:NumericUpDownExtender ID="NumericUpDownExtender8" runat="server"
                    TargetControlID="Car_hour"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "500" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="car_day" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:NumericUpDownExtender ID="NumericUpDownExtender5" runat="server"
                    TargetControlID="car_day"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "2"
                     Maximum = "1000" />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Car_week" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; 
        <asp:NumericUpDownExtender ID="NumericUpDownExtender6" runat="server"
                    TargetControlID="Car_week"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "5"
                     Maximum = "5000" />
        <asp:TextBox ID="Car_month" runat="server"></asp:TextBox> 
        <asp:NumericUpDownExtender ID="NumericUpDownExtender7" runat="server"
                    TargetControlID="Car_month"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "10"
                     Maximum = "10000" />
    <br />
    <asp:Label ID="Label29" runat="server" Text="Per hour"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label30" runat="server" Text="Per day"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label31" runat="server" Text="Per week"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label32" runat="server" Text="Per Month"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label33" runat="server" Text="Min. rental price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRentalPrice" runat="server"></asp:TextBox>
        <asp:NumericUpDownExtender ID="NumericUpDownExtender9" runat="server"
                    TargetControlID="txtRentalPrice"
                     Width="120"
                     RefValues=""
                     ServiceDownMethod=""
                     ServiceUpMethod=""
                    TargetButtonDownID=""
                     TargetButtonUpID=""
                     Minimum = "1"
                     Maximum = "8000" />
    <br />
    <br />
    <asp:Label ID="Label23" runat="server" Text="Cancellation policy"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label24" runat="server" 
        Text="For more information about how we process cancellations and how they offer additional protection to both drivers and property owners, please review our"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">cancellation policies.</asp:HyperLink>
    <br />
    <br />
    <asp:RadioButtonList ID="CancelRadioButtonList" runat="server" >
    <asp:ListItem Text="Flexible: Full refund 1 day prior to the start date of the booking (Recommended)" Value="Flexiable"></asp:ListItem>
    <asp:ListItem Text="Moderate: Full refund 3 days prior to the start date of the booking" Value="Moderate"></asp:ListItem>
    <asp:ListItem Text="Strict: 70% refund 14 days prior to the start date of the booking" Value="Strict"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="Label25" runat="server" 
        Text="Detailed description and facilities"></asp:Label>
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
        <asp:Label ID="Description" runat="server" Text="Description"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="FacilitiesDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
   <asp:HtmlEditorExtender ID="HtmlEditorExtender1" 
            TargetControlID="FacilitiesDescription" DisplaySourceTab="true" 
            runat="server"/>
           
        </asp:HtmlEditorExtender>
        <asp:RequiredFieldValidator ID="DescriptionRFV" runat="server" 
            ErrorMessage="Please describe your facilities" ControlToValidate="FacilitiesDescription"></asp:RequiredFieldValidator>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label27" runat="server" 
        Text="Additional instructions for drivers"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtInstructions" runat="server" TextMode="MultiLine"></asp:TextBox>
  
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label26" runat="server" Text="Finalise"></asp:Label>
    <br />
    <br />
   
        <asp:CheckBox ID="InstantCheckBox" runat="server" Text="Accept instant bookings (Recommended)" />
        <asp:CheckBox ID="TermsCheckBox" runat="server" Text="   I agree to the ParkatmyHouse terms and conditions" />  
      
    <br />
     <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Sumbit" onclick="Button1_Click" />
    <br />
        <br />
       
    <br />
    </div>         
            </form>
</body>
</html>
