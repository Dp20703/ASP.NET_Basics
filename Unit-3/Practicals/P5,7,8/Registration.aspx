<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Page</title>
    <style type="text/css">
        .style1
        {
            height: 314px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            ContinueDestinationPageUrl="~/Login.aspx" 
            FinishDestinationPageUrl="~/Login.aspx" Height="283px" 
            oncreateduser="CreateUserWizard1_CreatedUser" Width="926px">
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" 
                    CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                    Text="Next" />
            </StepNavigationTemplate>
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <CustomNavigationTemplate>
                        <table border="0" cellspacing="5" style="width:100%;height:100%;">
                            <tr align="right">
                                <td align="right" colspan="0">
                                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                        Text="Create User" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
                <asp:WizardStep runat="server" Title="Personal Info">
                    <table class="style2">
                        <tr>
                            <td class="style3">
                                <span lang="en-us">Enter FirstName:</span></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <span lang="en-us">Enter LastName:</span></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <span lang="en-us">Favourite Color:</span></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <span lang="en-us">Profile Photo:</span></td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    
    </div>
    </form>
</body>
</html>
