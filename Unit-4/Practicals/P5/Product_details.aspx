<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_details.aspx.cs" Inherits="Product_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="300px" 
            Width="400px">
            <Columns>
                <asp:BoundField DataField="Product_code" HeaderText="Product_code" 
                    SortExpression="Product_code" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Category_name" HeaderText="Category_name" 
                    SortExpression="Category_name" />
                <asp:BoundField DataField="Product_url" HeaderText="Product_url" 
                    SortExpression="Product_url" />
                <asp:ImageField DataImageUrlField="Product_url" HeaderText="Product Image">
                    <ControlStyle BorderColor="#660066" BorderStyle="Solid" BorderWidth="2px" 
                        Height="400px" Width="300px" />
                    <ItemStyle BorderColor="#660066" BorderStyle="Solid" BorderWidth="2px" 
                        Height="300px" HorizontalAlign="Center" VerticalAlign="Middle" Width="400px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Product_info]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
