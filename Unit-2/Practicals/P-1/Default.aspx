<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Select Proudct:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="ProductName" 
            DataValueField="Price">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Price:"></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <center>
            <asp:Button ID="Button1" runat="server" Text="Fetch Price" 
                onclick="Button1_Click" />
          
        </center>
          <br /> 
        <br />
        <asp:Label ID="Label4" runat="server" Text="Enter Quantity:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <center><asp:Button ID="Button2" runat="server" Text="Calculate Total Price" 
                onclick="Button2_Click" /></center>
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
