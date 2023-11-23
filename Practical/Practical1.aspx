<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical1.aspx.cs" Inherits="Practical.Practical1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
        .auto-style2 {
            width: 116px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 116px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Online Registration"></asp:Label>
        </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">Level</td>
                <td>
                    <asp:DropDownList ID="ddlLevel" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>Degree</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td>
                    <asp:RadioButtonList ID="radGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Height="99px" TextMode="MultiLine" Width="238px"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Date</td>
                <td>
                    <asp:Calendar ID="calDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Subject</td>
                <td>
                    <asp:CheckBoxList ID="chkSubject" runat="server">
                        <asp:ListItem>BAIT2003</asp:ListItem>
                        <asp:ListItem>BAIT2091</asp:ListItem>
                        <asp:ListItem>BACS2031</asp:ListItem>
                        <asp:ListItem>BAMS3443</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Fav Fruit</td>
                <td>
                    <asp:ListBox ID="lboxFruit" runat="server">
                        <asp:ListItem>apple</asp:ListItem>
                        <asp:ListItem>mango</asp:ListItem>
                        <asp:ListItem>durain</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">

                    Newsletters</td>
                <td>
                    <asp:CheckBox ID="chkNews" runat="server" Text="Yes" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style6">
            <input id="Reset1" type="reset" value="Reset" /></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style5">

                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
