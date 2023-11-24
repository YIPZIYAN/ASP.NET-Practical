<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarSticker.aspx.cs"
    Inherits="Practical.CarSticker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ID</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Joined Date</td>
                    <td>
                        <asp:Calendar ID="calDate" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender</td>
                    <td>
                        <asp:RadioButtonList ID="radGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Pragrammed</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlProgramme" runat="server">
                            <asp:ListItem>Select a programme</asp:ListItem>
                            <asp:ListItem>RSD</asp:ListItem>
                            <asp:ListItem>RDS</asp:ListItem>
                            <asp:ListItem>RSW</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Year of Study</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlYear" runat="server">
                            <asp:ListItem>Select year of study</asp:ListItem>
                            <asp:ListItem Value="1">Year 1</asp:ListItem>
                            <asp:ListItem Value="2">Year 2</asp:ListItem>
                            <asp:ListItem Value="3">Year 3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Vehicle&#39;s Registration Number</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtReg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Vehicle&#39;s Type</td>
                    <td>
                        <asp:DropDownList ID="ddlType" runat="server">
                            <asp:ListItem>Select a vehicle type</asp:ListItem>
                            <asp:ListItem>Car</asp:ListItem>
                            <asp:ListItem>Motorcycle</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

