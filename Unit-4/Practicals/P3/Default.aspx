<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table border="1">
                    <tr bgcolor="aqua">
                        <th>
                            Emp Id
                        </th>
                        <th>
                            Name
                        </th>
                        <th>
                            Age
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr bgcolor="yellow">
                    <td>
                        <%#Eval("Emp_Id")%>
                    </td>
                    <td>
                        <%#Eval("Name")%>
                    </td>
                    <td>
                        <%#Eval("Age")%>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [EmpDetails]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
