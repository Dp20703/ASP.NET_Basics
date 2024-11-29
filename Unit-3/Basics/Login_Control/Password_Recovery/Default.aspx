<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        </asp:PasswordRecovery>
        <br />
        <br />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="Sign In" LogoutAction="Refresh"
            LogoutPageUrl="~/Default2.aspx" LogoutText="Sign Out" OnLoggingOut="LoginStatus1_LoggingOut" />
        <br />
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="590px">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table border="0" style="font-size:100%;width:590px;">
                            <tr>
                                <td align="center" colspan="2">
                                    Complete</td>
                            </tr>
                            <tr>
                                <td>
                                    Your account has been successfully created.</td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                        CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        <br />
        <br />
        <asp:ChangePassword ID="ChangePassword1" runat="server" 
            CancelDestinationPageUrl="~/Default2.aspx">
        </asp:ChangePassword>
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
