﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="CPU">CPU</asp:ListItem>
            <asp:ListItem Value="MotherBoard">MotherBoard</asp:ListItem>
            <asp:ListItem>RAM</asp:ListItem>
            <asp:ListItem Value="KeyBoard">KeyBoard</asp:ListItem>
            <asp:ListItem>Mouse</asp:ListItem>
            <asp:ListItem>Cabinet</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Place Order" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
