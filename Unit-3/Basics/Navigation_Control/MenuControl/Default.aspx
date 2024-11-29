<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Employees" Value="Employees">
                    <asp:MenuItem Text="Department" Value="Department">
                        <asp:MenuItem Text="Sbi" Value="Sbi"></asp:MenuItem>
                        <asp:MenuItem Text="Bob" Value="Bob"></asp:MenuItem>
                        <asp:MenuItem Text="UBI" Value="UBI"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
