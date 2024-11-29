<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            BackColor="#FF0066" DataSourceID="SqlDataSource1" DataTextField="Name" 
            DataValueField="Roll_no" ForeColor="White" Height="53px" Width="200px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Roll_no], [Name] FROM [StudentInfo]">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                Roll_no:
                <asp:TextBox ID="Roll_noTextBox" runat="server" Text='<%# Bind("Roll_no") %>' />
                <br />
                Java:
                <asp:TextBox ID="JavaTextBox" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                Python:
                <asp:TextBox ID="PythonTextBox" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                PHP:
                <asp:TextBox ID="PHPTextBox" runat="server" Text='<%# Bind("PHP") %>' />
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
                Java:
                <asp:TextBox ID="JavaTextBox" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                Python:
                <asp:TextBox ID="PythonTextBox" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                PHP:
                <asp:TextBox ID="PHPTextBox" runat="server" Text='<%# Bind("PHP") %>' />
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
                Java:
                <asp:Label ID="JavaLabel" runat="server" Text='<%# Bind("Java") %>' />
                <br />
                Python:
                <asp:Label ID="PythonLabel" runat="server" Text='<%# Bind("Python") %>' />
                <br />
                PHP:
                <asp:Label ID="PHPLabel" runat="server" Text='<%# Bind("PHP") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScore] WHERE ([Roll_no] = @Roll_no)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Roll_no" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
