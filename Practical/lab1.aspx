<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab1.aspx.cs" Inherits="Practical.lab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 205px;
        }

        .auto-style4 {
            width: 132px;
        }

        .auto-style6 {
            width: 33%;
            height: 39px;
        }
        .auto-style7 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Search Product Based On Category Name<br />
            <table class="auto-style6">
                <tr>
                    <td class="auto-style1">Select a category name:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlSearch" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="auto-style7">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Find" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]"></asp:SqlDataSource>
            <br />
            Your search return:
            <asp:Label ID="lblNum" runat="server"></asp:Label>
            &nbsp;record.<br />
            <br />

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div>
                        <p>Product Name: <%# Eval("ProductName") %></p>
                        <p>Unit Price: <%# Eval("UnitPrice") %></p>  
                    </div>
                </ItemTemplate>
                <SeparatorTemplate>
                    <hr>
                </SeparatorTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSearch" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
