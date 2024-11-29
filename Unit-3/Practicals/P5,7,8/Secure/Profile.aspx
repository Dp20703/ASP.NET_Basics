<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Secure_Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
</head>
<body id='mybody' runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="120px" Width="105px" />
        <br />
        <br />
        Firstname:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
            LastName:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
