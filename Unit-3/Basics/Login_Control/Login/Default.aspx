<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" BorderColor="Black" Height="152px"  onauthenticate="Login1_Authenticate" Width="701px" DestinationPageUrl="~/Default.aspx" TitleText="Enter the user name and password">
        </asp:Login>
    
        <br />
        <br />
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
<LoggedInTemplate>
You are admin
</LoggedInTemplate>
<AnonymousTemplate>
here is anonymous user<br />
</AnonymousTemplate>
</asp:LoginView>
        <asp:LoginName ID="LoginName1" runat="server" FormatString=" Welcome to our site {0}!"/>
    </div>
    </form>
</body>
</html>
