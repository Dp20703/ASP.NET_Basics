<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_list.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductList Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            BorderColor="Gray" BorderWidth="2px">
            <ItemTemplate>
                Product_url:
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl='<%# Eval("Product_url") %>' 
                    PostBackUrl='<%# Eval("Product_url", "Product_details.aspx?i={0}") %>' 
                    BorderColor="#660066" BorderWidth="2px" Height="400px" Width="300px" />
                <asp:Image ID="Image1" runat="server" />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Product_url], [Price] FROM [Product_info] WHERE ([Category_name] = @Category_name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Category_name" QueryStringField="pc" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
