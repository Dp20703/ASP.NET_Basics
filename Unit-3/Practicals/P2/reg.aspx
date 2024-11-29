<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function Text2_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br>
             <asp:Label ID="Label2" runat="server" Text="Enter Email:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter DOB:"> </asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
       <asp:Label ID="Label4" runat="server" Text="Enter password:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<br />
        <br />
           <asp:Label ID="Label5" runat="server" Text="Select Security Question:"></asp:Label>
        <span lang="en-us">&nbsp;</span><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Favorite Book</asp:ListItem>
            <asp:ListItem>Favorite Movie</asp:ListItem>
            <asp:ListItem>Favorite Food</asp:ListItem>
            <asp:ListItem>Favorite Color</asp:ListItem>
        </asp:DropDownList>   
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Enter Answer:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SignUp" />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            PostBackUrl="~/Login.aspx" Text="Back to Login" />
       </div>
    </form>
</body>
</html>
