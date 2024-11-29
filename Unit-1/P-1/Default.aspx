<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 1</title>
    
    <style type="text/css">
        #form1
        {
            height: 546px;
            width: 1058px;
        }
        .style4
        {
            width: 398px;
            height: 31px;
        }
        .style5
        {
            height: 31px;
        }
        .style8
        {
            width: 398px;
            height: 15px;
        }
        .style9
        {
            height: 15px;
        }
        .style10
        {
            width: 398px;
            height: 27px;
        }
        .style11
        {
            height: 27px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
   
    <table style="height: 552px; width: 1060px">
    <tr>
    <td class="style4"> <asp:Label ID="Label1" runat="server" Text="FirstName:"></asp:Label></td>
    <td class="style5"> <asp:TextBox ID="TextBox1" runat="server" 
            AutoCompleteType="FirstName" Width="356px"></asp:TextBox></td>
    </tr>
     <tr>
    <td class="style10"> <asp:Label ID="Label2" runat="server" Text="Lastname:"></asp:Label></td>
    <td class="style11"> <asp:TextBox ID="TextBox2" runat="server" Height="30px"  
            AutoCompleteType="LastName" Width="350px"></asp:TextBox>
       </td>
    </tr>
     <tr>
    <td class="style8"><asp:Label ID="Label3" runat="server" Text="Phone:"></asp:Label></td>
    <td class="style9"> <asp:TextBox ID="TextBox3" runat="server" 
            AutoCompleteType="Cellular" Height="30px" Width="350px"></asp:TextBox></td>
    </tr>
     <tr>
    <td class="style4"> <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></td>
    <td class="style5"> <asp:TextBox ID="TextBox4" runat="server" 
            AutoCompleteType="Email" Height="30px" Width="350px"></asp:TextBox></td>
            <td></td>
    </tr>
       
        
      </table><asp:Button ID="Button1" runat="server" Text="Submit:" 
            onclick="Button1_Click" />
    </form>
</body>
</html>
