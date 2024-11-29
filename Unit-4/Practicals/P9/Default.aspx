<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 9</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 798px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <span lang="en-us">&nbsp; <b>EMPLOYEE DETAILS:</b></span>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Employee Code:</span></td>
                <td>
                    <asp:TextBox ID="txtEmpcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Name:</span></td>
                <td>
                    <asp:TextBox ID="txtEmpname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Address:</span></td>
                <td>
                    <asp:TextBox ID="txtEmpaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Department:</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="DeptName" 
                        DataValueField="DeptCode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Dept]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">State:</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="StateName" 
                        DataValueField="StateCode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">City:</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="CityName" 
                        DataValueField="CityCode">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [City] WHERE ([StateCode] = @StateCode)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="StateCode" 
                                PropertyName="SelectedValue" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
                        Text="Insert" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
