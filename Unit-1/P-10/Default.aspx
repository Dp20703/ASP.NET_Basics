<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 10</title>
    <style type="text/css">
        .style1
        {
            height: 1080px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 569px;
        }
        .style5
        {
            height: 21px;
            width: 569px;
        }
        .style6
        {
            width: 350px;
        }
        .style7
        {
            width: 300px;
        }
        .style8
        {
            width: 485px;
        }
        .style9
        {
            width: 68%;
        }
        .style10
        {
            width: 100%;
            height: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <asp:Panel ID="Panel1" runat="server" Height="180px">
        <strong>Personal Details:<br /></strong>
            <table class="style2">
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label4" runat="server" Text="Mobile No:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        
        
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="200px">
         <strong>Eductional Details:<br /></strong>
            <table class="style10">
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style7">
                        <span lang="en-us">University Board</span></td>
                    <td class="style7">
                        <span lang="en-us">Passing Year</span></td>
                    <td>
                        <span lang="en-us">Percentage Obtained</span></td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label5" runat="server" Text="S.S.C"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label6" runat="server" Text="H.S.C"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label7" runat="server" Text="Graduate"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label8" runat="server" Text="Post Graduate"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
       
          
        
        
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel3" runat="server" Height="162px">
         <strong>Experience Details:<br /></strong>
            <table class="style9">
                <tr>
                    <td class="style8">
                       Company Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        From Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        To Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                       Post:</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="20px">
            
        </asp:Panel>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
            style="height: 29px" />
    </div>
    </form>
</body>
</html>
