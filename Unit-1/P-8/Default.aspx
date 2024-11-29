<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 8</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 382px;
        }
        .style3
        {
            width: 382px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 1090px;
            height: 384px;
        }
        .style6
        {
            width: 387px;
        }
        .style7
        {
            width: 387px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style5">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New Member</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Existing Member</asp:LinkButton>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="808px" Visible="False" Height="187px">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="807px" Height="114px" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label5" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Login" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
