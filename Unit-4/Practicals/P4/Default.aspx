<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 4</title>
    <style type="text/css">
        .style1
        {
            margin-bottom: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style1" DataSourceID="SqlDataSource1" Height="300px" 
            HorizontalAlign="Center" ShowFooter="True" Width="938px">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Category_name" 
                    DataNavigateUrlFormatString="Product_list.aspx?pc={0}" 
                    DataTextField="Category_name" HeaderText="Category" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Category_name] FROM [Product_info]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
