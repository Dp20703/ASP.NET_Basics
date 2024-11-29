<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 10</title>
    <style type="text/css">
        .style1
        {
            height: 310px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    
    </div>
    </form>
</body>
</html>
