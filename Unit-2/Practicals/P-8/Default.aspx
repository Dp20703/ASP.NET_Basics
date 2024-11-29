<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 8</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageMap ID="ImageMap1" runat="server" Height="200px" 
            ImageUrl="Nav.png" ImageAlign="Top" ForeColor="#000066" Width="100%">
            <asp:RectangleHotSpot Bottom="30" NavigateUrl="~/Services.aspx" Right="1000" 
                Left="650" Top="300" />
            <asp:RectangleHotSpot Bottom="30" NavigateUrl="~/Products.aspx" 
                Right="300" Top="300" />
            <asp:RectangleHotSpot Bottom="30" Left="330" 
                NavigateUrl="~/Home.aspx" Right="580" Top="300" />
        </asp:ImageMap>
    
    </div>
    </form>
</body>
</html>
