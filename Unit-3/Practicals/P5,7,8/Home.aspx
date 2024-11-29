<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
            Target="_self">Registration</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" 
            Target="_self">Login</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Secure/Profile.aspx" Target="_self">Profile</asp:HyperLink>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
