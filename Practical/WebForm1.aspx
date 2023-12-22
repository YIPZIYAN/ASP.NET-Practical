<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">User Name:</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqUsername" runat="server" ForeColor="Red"
                            ErrorMessage="User name is required" SetFocusOnError="True" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtPassword" ErrorMessage="Password should be 6 characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{6}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Age:</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ControlToValidate="txtAge" ErrorMessage="Age is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server"
                            ControlToValidate="txtAge" ErrorMessage="Age must between 1-99" ForeColor="Red" MaximumValue="99" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Birth:</td>
                    <td>
                        <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="txtDob" ErrorMessage="Date of Birth is requried" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToValidate="txtDob" ErrorMessage="Date of Birth format should dd/mm/YYYY" ForeColor="Red" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Credit Card Type:</td>
                    <td>
                        <asp:RadioButtonList ID="radCCType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Credit Card Number:</td>
                    <td>
                        <asp:TextBox ID="txtCCNum" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="txtCCNum" ErrorMessage="Credit card number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="txtCCNum" ErrorMessage="Invalid Credit Card Number" ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        &nbsp;
        <input id="Button2" type="button" value="Clear" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            ForeColor="Red" HeaderText="The following problems have been encountered" 
            ShowMessageBox="true"/>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
