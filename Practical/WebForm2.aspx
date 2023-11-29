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
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Set1</asp:ListItem>
                            <asp:ListItem>Set2</asp:ListItem>
                            <asp:ListItem>Set3</asp:ListItem>
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
                    <td class="auto-style5">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Set 1</asp:ListItem>
                            <asp:ListItem>Set 2</asp:ListItem>
                            <asp:ListItem>Set 3</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceSet1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceSet2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceSet3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
