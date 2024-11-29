<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_details.aspx.cs" Inherits="ProductDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductDetails Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="400px" Width="400px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Product_id" HeaderText="Product_id" 
                    SortExpression="Product_id" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Category_name" HeaderText="Category_name" 
                    SortExpression="Category_name" />
                <asp:BoundField DataField="Product_url" HeaderText="Product_url" 
                    SortExpression="Product_url" />
                <asp:ImageField DataImageUrlField="Product_url" HeaderText="Product Image">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Product_info] WHERE ([Product_url] = @Product_url)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_url" QueryStringField="i" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
