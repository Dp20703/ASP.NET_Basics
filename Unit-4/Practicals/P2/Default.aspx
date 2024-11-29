<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 2</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #800000;
        }
        .style2
        {
            width: 812px;
        }
        .style3
        {
            width: 812px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <span lang="en-us">Date of Arrival:</span></td>
                <td>
                    <asp:TextBox ID="adate" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="adate" ErrorMessage="enter date &gt;today's date"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Number of Days:</span></td>
                <td>
                    <asp:TextBox ID="ndays" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="not more than 4 days" ControlToValidate="ndays"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <span lang="en-us">Room Type:</span></td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="Room_Type" DataValueField="Price" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [RoomDetails]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Room Rate:</span></td>
                <td>
                    <asp:Label ID="lblroomrate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Number of Persons:</span></td>
                <td>
                    <asp:TextBox ID="npersons" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="4 persons allowed in a room" ControlToValidate="npersons"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Advanced Payement:</span></td>
                <td>
                    <asp:TextBox ID="apayment" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Book" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" BorderColor="#660066" BorderWidth="2px" 
                        Width="139px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" Text="Confirm" 
                        onclick="Button2_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span lang="en-us">Total Payments:</span></td>
                <td>
                    <asp:Label ID="lbltamount" runat="server" BorderColor="#660066" 
                        BorderWidth="2px" Width="171px"></asp:Label>
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
