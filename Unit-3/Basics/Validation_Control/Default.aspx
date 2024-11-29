<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>

        
<asp:RequiredFieldValidator ID="users" runat="server"  ControlToValidate='Username' ErrorMessage='Please enter the username' ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
            ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    <br>
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Black" 
            ForeColor="White" onclick="Button1_Click" />
    
    </div>
    <br>
    <br>
    <div>
    
        <asp:Label ID="Label3" runat="server" Text="Enter a Value:"></asp:Label>
        <asp:TextBox ID="range" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" controlToValidate='range' Type="Integer" MinimumValue='100' MaximumValue='200'
            ErrorMessage="Enter the number between (100-200)"></asp:RangeValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Save" />
    
    </div>
    <br>
    <br>
    <div>
    
        <asp:Label ID="Label4" runat="server" Text="Enter email:"></asp:Label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="please enter valid email"
             ControlToValidate='email' ToolTip="dp@gmail.com" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-,]\w+)*">Please 
        enter valid email</asp:RegularExpressionValidator>
        <br />
       
    
    </div>
      <br>
    <br>
    <div>
    Small number: <asp:TextBox ID="smallnum" runat="server"></asp:TextBox>
      Big number: <asp:TextBox ID="bignum" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="bignum" ControlToValidate="smallnum" 
            ErrorMessage="CompareValidator" Type="Integer" Operator="LessThan">Enter small number</asp:CompareValidator>
             <br />
        <asp:Button ID="Button3" runat="server" Height="42px" Text="Ok" Width="117px" />
       
       </div>
       <br>
       <br>
       <div>
        Enter the text:<asp:TextBox ID="txtname"
runat="server"></asp:TextBox>
<br />
<asp:CustomValidator ID="CustomValidator1"
runat="server"
ControlToValidate="txtname" ErrorMessage="The
text must be 10 character only"
ForeColor="Red"
onservervalidate="CustomValidator1_ServerValidate">
</asp:CustomValidator>
            <asp:Button ID="Button4" runat="server" Height="25px" Text="Ok" Width="117px" />
       
    </div>
    <table class="auto-style1">
<tr>
<td class="auto-style2">User Name</td>
<td>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="user" runat="server" ControlToValidate="username"
ErrorMessage="Please enter a user name" ForeColor="Red">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="auto-style2">Password</td>
<td>
<asp:TextBox ID="password" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="password"
ErrorMessage="Please enter a password" ForeColor="Red">*</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="auto-style2">
<br/>
<asp:Button ID="Button5" runat="server" Text="login"/>
</td>
<td>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
<br/>
</td>
</tr>
</table>
    </form>
</body>
</html>
