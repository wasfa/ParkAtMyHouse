<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enable.aspx.cs" Inherits="enable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function goFurther() {
            if (document.getElementById("chkAgree").checked == true)
                document.getElementById("btnSubmit").disabled = false;
            else
                document.getElementById("btnSubmit").disabled = true;
        }
</script>

<style type="text/css">
input[disabled]
{
   color:Gray; text-decoration:none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp: input type="checkbox" id="chkAgree" onclick="goFurther()">I Agree with the terms and condition
<asp:input type="button" id="btnSubmit" value="Submit" disabled>
    </div>
    </form>
</body>
</html>
