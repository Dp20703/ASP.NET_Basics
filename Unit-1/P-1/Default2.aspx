<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 1 Page:2</title>
    <style type="text/css">
        #form1
        {
            height: 406px;
            width: 938px;
        }
        .style8
        {
            height: 70px;
            width: 102px;
        }
        .style9
        {
            height: 70px;
            width: 371px;
        }
        .style10
        {
            height: 46px;
            width: 102px;
        }
        .style11
        {
            height: 46px;
            width: 371px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server"> 
    
    <table style="height: 397px; width: 929px">
    <tr>
    <td class="style8"><asp:Label ID="Label1" runat="server" Text="Firstname:"></asp:Label></td>
    <td class="style9"> 
        <asp:TextBox ID="TextBox1" runat="server" 
            AutoCompleteType="FirstName" Height="30px" Width="350px" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
    </tr>
    <tr>
    <td class="style8"><asp:Label ID="Label2" runat="server" Text="Lastname:"></asp:Label></td>
    <td class="style9">
        <asp:TextBox ID="TextBox2" runat="server" 
            AutoCompleteType="LastName" Height="30px" Width="350px"></asp:TextBox></td>
    </tr>
      <tr>
    <td class="style8"> <asp:Label ID="Label3" runat="server" Text="Phone:"></asp:Label></td>
    <td class="style9">
        <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Cellular" 
            Height="30px" Width="350px"></asp:TextBox></td>
    </tr>
      <tr>
    <td class="style10">  <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></td>
    <td class="style11">  
        <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email" 
            Height="30px" Width="350px"></asp:TextBox></td>
    </tr>
    </table>
   </form>
</body>
</html>
