<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 5</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #800080;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 812px;
        }
        .style4
        {
            height: 26px;
            width: 812px;
        }
        .style5
        {
            width: 857px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td class="style3">
                    <center class="style5">
                        <span lang="en-us">PRODUCT DETAILS:</span></center>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">Product Code:</span></td>
                <td class="style2">
                    <asp:TextBox ID="txtpcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <span lang="en-us">&nbsp;</span>&nbsp;<span lang="en-us">Product Name:</span></td>
                <td>
                    &nbsp;<asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">&nbsp; Price:</span></td>
                <td class="style2">
                    <asp:TextBox ID="txtpprice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                <span lang="en-us">Description:</span></td>
                <td>
                    &nbsp;<asp:TextBox ID="txtpdesc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                <span lang="en-us">Category Name:</span></td>
                <td>
                    &nbsp;<asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                <span lang="en-us">Product Image:</span></td>
                <td>
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                        Text="Submit" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
