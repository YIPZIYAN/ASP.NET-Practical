<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link id="css" href="<%= 
(string)Session["SelectedCss"] %>"
        type="text/css"
        rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your are visitors:
            <asp:Label runat="server" ID="lblCount"></asp:Label>
            <br />
            You access on
            <asp:Label ID="lblDate" runat="server"></asp:Label>
            <br />
            <br />
            Choose a theme:<br />
            <asp:DropDownList ID="ddltheme" runat="server">
                <asp:ListItem>Standard</asp:ListItem>
                <asp:ListItem>Special</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnApply" runat="server" Text="Apply" />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="isRemember">Remember preference</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:HyperLink ID="hypNext" runat="server" NavigateUrl="~/WebForm2.aspx">Next Page</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
