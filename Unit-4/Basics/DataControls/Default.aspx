<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        </asp:Repeater>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" ShowFooter="True" 
            Width="348px">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Roll_no" 
                    HeaderText="Roll_no" SortExpression="Roll_no" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="#660066" 
            BorderColor="White" BorderStyle="Dashed" BorderWidth="2px" 
            DataSourceID="SqlDataSource1" ForeColor="White" HorizontalAlign="Center" 
            RepeatColumns="2" RepeatDirection="Horizontal" Width="387px">
            <ItemTemplate>
                Roll_no:
                <asp:Label ID="Roll_noLabel" runat="server" Text='<%# Eval("Roll_no") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="126px" 
            Width="703px">
            <Fields>
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Roll_no" 
                    HeaderText="Roll_no" SortExpression="Roll_no" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="City" HeaderText="City" 
                    SortExpression="City" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditItemTemplate>
                Roll_no:
                <asp:TextBox ID="Roll_noTextBox" runat="server" Text='<%# Bind("Roll_no") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Roll_no:
                <asp:TextBox ID="Roll_noTextBox" runat="server" Text='<%# Bind("Roll_no") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Roll_no:
                <asp:Label ID="Roll_noLabel" runat="server" Text='<%# Bind("Roll_no") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
        </asp:FormView>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
