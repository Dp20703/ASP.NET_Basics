<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 6</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="179px" Width="363px" 
            DataKeyNames="Doc_id">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Doc_id" HeaderText="Doc_id" 
                    SortExpression="Doc_id" />
                <asp:BoundField DataField="Doc_name" HeaderText="Doc_name" 
                    SortExpression="Doc_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT * FROM [Doc_info]"></asp:SqlDataSource>
    
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Patient_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Patient_id" HeaderText="Patient_id" ReadOnly="True" 
                    SortExpression="Patient_id" />
                <asp:BoundField DataField="Patient_name" HeaderText="Patient_name" 
                    SortExpression="Patient_name" />
                <asp:BoundField DataField="Doc_id" HeaderText="Doc_id" 
                    SortExpression="Doc_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Patient_info] WHERE ([Doc_id] = @Doc_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Doc_id" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
