<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SliderExtender.aspx.cs" Inherits="SliderExtender" %>
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
        <br />
        <br />
        <asp:TextBox ID="Slider1" runat="server"></asp:TextBox>
        <span id="time" />
        
        <asp:SliderExtender ID="SlideExtender1"  TargetControlID="Slider1" runat="Server"
         BehaviorID="slider"
             Minimum="0"
             Maximum="95"
             Steps="95">
        </asp:SliderExtender>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Slider2" runat="server"></asp:TextBox>
        <span id="time1"/>
        
        <asp:SliderExtender ID="SliderExtender2"  TargetControlID="Slider2" runat="Server"
         BehaviorID="slider"
             Minimum="0"
             Maximum="95"
             Steps="95">
        </asp:SliderExtender></div>
    </form>
    <script type="text/javascript">
    <!--
        function pageLoad() {
            var slider = $find('slider');
            var timeLabel = $get('time');


            slider.add_valueChanged(onValueChanged);


            function onValueChanged() {
                var currValue = slider.get_Value();


                var hours = Math.floor(currValue / 4);
                var minutes = (currValue % 4) * 15;


                timeLabel.innerHTML = hours + ':' + minutes;

                Label.innerHTML = hours + ':' + minutes;

            }
        }
    //-->
    </script>
</body>
</html>
