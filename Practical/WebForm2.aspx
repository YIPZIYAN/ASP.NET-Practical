<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Practical.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            <asp:HyperLink ID="hypPrev" runat="server" NavigateUrl="~/WebForm1.aspx">Previous Page</asp:HyperLink>

        </div>
    </form>
</body>
</html>
