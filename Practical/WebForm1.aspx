<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Holiday Travel Package<br />
            <br />
            <asp:Label ID="lblMsg" runat="server" Text="Happy Holiday From MOM Travel!"></asp:Label>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">Your Budget:</td>
                    <td>
                        <asp:TextBox ID="txtBudget" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Choose Your Destination:</td>
                </tr>
                <tr>
                    <td class="auto-style1">From</td>
                    <td>To</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>KL</asp:ListItem>
                            <asp:ListItem>Penang</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Auckland</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnCheck" runat="server" Text="Check" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
