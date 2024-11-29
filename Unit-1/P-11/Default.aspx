<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 11</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 27px;
        }
        .style3
        {
            height: 27px;
            width: 398px;
        }
        .style4
        {
            width: 399px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:RadioButton ID="RadioButton1" runat="server" GroupName="PaymentMode" Text="Cash"
            OnCheckedChanged="RadioButton1_CheckedChanged" Visible="False"/>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="PaymentMode" Text="Credit/Debit Cards"
            OnCheckedChanged="RadioButton2_CheckedChanged" Visible="False"/>
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="PaymentMode" Text="Cheque"
            OnCheckedChanged="RadioButton3_CheckedChanged" Visible="False"/>
        <br />
        
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            Height="21px" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            Width="534px">
            <asp:ListItem>Cash</asp:ListItem><asp:ListItem>Credit/Debit Cards</asp:ListItem><asp:ListItem>Cheque</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style3">
                        Enter Amount:
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style4">
                        Enter Card No:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Name On Card:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Expirty Month-Year:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Enter Amount:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style4">
                        Enter Cheque No:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Enter Date on Cheque:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Enter Amount:</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Enter Cheque Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
