<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 4</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 26px;
            width: 299px;
        }
        .style4
        {
            width: 299px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Enter Your First Number"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Enter Your Second Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Add" Width="64px" 
                    onclick="Button1_Click" />
                &nbsp; 
                <asp:Button ID="Button2" runat="server" Text="Multiply" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
