<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 102%;
        }
        .style2
        {
            width: 290px;
        }
        .style3
        {
            width: 365px;
        }
        .style4
        {
            height: 181px;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 380px;
        }
        .style7
        {
            width: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style4">
        <table class="style1">
            <tr>
                <td class="style2">
                    <span lang="en-us">Enter your name:</span>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="Enter your name:"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Enter DOB:"> </asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtbd" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtbd"
                        ErrorMessage="Must enter Birth date between &quot;1/1/1980&quot; to
&quot;1/1/2000&quot;" ForeColor="Red" MaximumValue="1/1/2000" MinimumValue="1/1/1980" Type="Date"></asp:RangeValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;Enter Email-ID:
                </td>
                <td class="style3">
                    &nbsp;
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Valid email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-
.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Phone No.: &nbsp;
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn"
                        ErrorMessage="Number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
                <td>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="style5">
            <tr>
                <td class="style6">
                    <span lang="en-us">Enter your password:</span>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <span lang="en-us">Enter retype password:</span>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same Password"
                        ControlToValidate="TextBox1" ControlToCompare="TextBox2"></asp:CompareValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <span lang="en-us">Enter Roll no:</span>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Roll no with Prefix BCA" 
                        ToolTip="BCA01,BCA02 etc..." ValidationExpression="BCA+\d{2,3}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <span lang="en-us">Enter Date:</span>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter date less than today" 
                        onprerender="Page_PreRender" Operator="LessThan"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <span lang="en-us">Enter Age:</span>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter the age between 18 to 35" 
                        MaximumValue="35" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" runat="server" Text="submit" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
