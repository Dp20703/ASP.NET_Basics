﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter First Num:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter Second Num:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Sum" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Multiplication" 
        onclick="Button2_Click" />
    </form>
</body>
</html>
