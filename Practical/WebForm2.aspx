<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Practical.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }

        .auto-style2 {
            height: 26px;
            width: 264px;
        }

        .auto-style3 {
            width: 264px;
        }

        .auto-style4 {
            width: 264px;
            height: 29px;
        }

        .auto-style5 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM<br />
            <asp:Label ID="lblTime" runat="server"></asp:Label>
            <br />
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">Date</td>
                    <td class="auto-style1">
                        <asp:Calendar ID="calDepart" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        <asp:TextBox ID="txtDepart" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Adult</td>
                    <td>
                        <asp:TextBox ID="txtAdult" runat="server" TextMode="Number">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Child</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtChild" runat="server" TextMode="Number">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">From</td>
                    <td>
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>Select From</asp:ListItem>
                            <asp:ListItem>Hentian Duta</asp:ListItem>
                            <asp:ListItem>Hentian Putra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Destination</td>
                    <td>
                        <asp:DropDownList ID="ddlDestination" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDestination_SelectedIndexChanged">
                            <asp:ListItem>Select Destination</asp:ListItem>
                            <asp:ListItem>Butterworth</asp:ListItem>
                            <asp:ListItem>Seremban</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ticket Price</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="btnBook" runat="server" Text="Book Ticket"
                OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx" />
            <asp:Button ID="btnCancel" runat="server" OnClick="Button2_Click" Text="Cancel"
                OnMouseOver="this.value='Click if you confirm to reset selection'"
                OnMouseOut="this.value='Cancel'" />
            <br />
        </div>
    </form>
</body>
</html>
