<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 6</title>
    <style type="text/css">
        .style1
        {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Select Any File: <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert Picture" />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" CssClass="style1">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Name","~/Image-Folder/{0}") %>'
                    Width="225px" Height="250px" />
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
