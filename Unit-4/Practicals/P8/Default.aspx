<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 8</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 2px solid #808000;
        }
        .style2
        {
            width: 649px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <span lang="en-us">EmployeeID:</span></td>
                <td>
                    <asp:TextBox ID="txtempid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">EmployeeName:</span></td>
                <td>
                    <asp:TextBox ID="txtempname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Salary:</span></td>
                <td>
                    <asp:TextBox ID="txtempsalary" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                        Text="Insert" />
                    <span lang="en-us">&nbsp;&nbsp; </span>
                    <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                        style="height: 29px" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Delete" />
                    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="btnSelect" runat="server" onclick="btnSelect_Click" 
                        Text="Select" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
