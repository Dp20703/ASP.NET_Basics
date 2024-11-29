<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#FF9966" 
            BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px" ExpandDepth="0">
            <Nodes>
                <asp:TreeNode NavigateUrl="https://www.gujarattourism.com/" Text="Gujarat" 
                    Value="Gujarat">
                    <asp:TreeNode Text="Ahmedabad" Value="Ahmedabad"></asp:TreeNode>
                    <asp:TreeNode Text="Vadodara" Value="Vadodara">
                        <asp:TreeNode Text="Savi" Value="Savi">
                            <asp:TreeNode Text="Bajwa Gam" Value="Bajwa Gam"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Maharastra" Value="Maharastra">
                    <asp:TreeNode Text="Mumbai" Value="Mumbai"></asp:TreeNode>
                    <asp:TreeNode Text="Pune" Value="Pune"></asp:TreeNode>
                    <asp:TreeNode Text="Nasik" Value="Nasik"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Rajstan" Value="Rajstan">
                    <asp:TreeNode Text="Ajmer" Value="Ajmer"></asp:TreeNode>
                    <asp:TreeNode Text="Jaipur" Value="Jaipur"></asp:TreeNode>
                    <asp:TreeNode Text="Jesalmer" Value="Jesalmer"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
