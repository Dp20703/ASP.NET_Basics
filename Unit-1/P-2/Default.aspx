<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 2</title>
    <style type="text/css">
  
    .style1
    {
    	background-color:Yellow;
    	color:Blue;
    	border:2px solid red;
    }
    .style2
    {
    	background-color:Aqua;
    	color:Blue;
    	border:2px Dashed Black;
    }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 458px">
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br /> 
        <br />
        <asp:Button ID="Button1" runat="server" Text="Style1" Width="100px" 
            onclick="Button1_Click" />&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Style2" Width="100px" 
            onclick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
