<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Practical.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 26%;
            height: 141px;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 49%;
        }
        .auto-style5 {
            width: 214px;
        }
        .auto-style6 {
            width: 154px;
        }
        .auto-style7 {
            width: 214px;
            height: 29px;
        }
        .auto-style8 {
            width: 154px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FLYING BREAKFAST.COM<br />
            <br />
            Order your breakfast online. Online order starts 2.00am - 11am everyday.<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Breakfast Set</td>
                    <td>
                        <asp:RadioButtonList ID="radSet" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="1">Set1</asp:ListItem>
                            <asp:ListItem Value="2">Set2</asp:ListItem>
                            <asp:ListItem Value="3">Set3</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblSetDetail" runat="server"></asp:Label>
            <br />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">Quantity</td>
                    <td>Total(RM)</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:CheckBox ID="cbSet1" runat="server" Text="Set 1" />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtQ1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblPriceSet1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:CheckBox ID="cbSet2" runat="server" Text="Set 2" />
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtQ2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceSet2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:CheckBox ID="cbSet3" runat="server" Text="Set 3" />
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtQ3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceSet3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">
                        Total(RM)</td>
                    <td>
                        <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnCal" runat="server" OnClick="btnCal_Click" Text="Calculate" />
        <input id="Button1" type="reset" value="Cancel" /><br />
        <br />
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm Order" PostBackUrl="~/WebForm3.aspx" />
    </form>
</body>
</html>
