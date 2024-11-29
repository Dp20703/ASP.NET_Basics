<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 10 (2)</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [FriendsDetails] WHERE ([FriendID] = @FriendID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="FriendID" QueryStringField="EventID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="FriendID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="FriendID" HeaderText="FriendID" ReadOnly="True" 
                    SortExpression="FriendID" />
                <asp:BoundField DataField="FriendName" HeaderText="FriendName" 
                    SortExpression="FriendName" />
                <asp:BoundField DataField="FriendDOB" HeaderText="FriendDOB" 
                    SortExpression="FriendDOB" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
