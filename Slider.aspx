<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Slider.aspx.cs" Inherits="Slider" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <br />
     <table>
            <tr>
                <td>
                    <span>Pick up an hour:</span>
                </td>
                <td>
                    <asp:TextBox ID="Time" runat="server" Width="45px" ></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="Slider1" runat="server"></asp:TextBox>
                    <asp:SliderExtender ID="SliderExtender1" runat="server"
                         TargetControlID="Slider1" Length="100"
                         BehaviorID="slider"
                         Minimum="0"
                         Maximum="95"
                         Steps="95">
                    </asp:SliderExtender>
                </td>
            </tr>
        </table>
        
    
    <script type="text/javascript">
    <!--
        function pageLoad() {
            var slider = $find('slider');
            var timeBox = $get('Time');

            // Subscribe to the valueChanged event.
            slider.add_valueChanged(onValueChanged);

            // Handle the valueChanged event.
            function onValueChanged() {
                var currValue = slider.get_Value();

                var hours = Math.floor(currValue / 4);
                var minutes = (currValue % 4) * 15;

                timeBox.value = hours + ':' + minutes +
                    ((minutes == 0) ? '0' : '');
            }
        }
    //-->
    </script>
</asp:Content>

