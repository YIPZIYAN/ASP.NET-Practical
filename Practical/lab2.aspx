<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2.aspx.cs" Inherits="Practical.lab2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
        .auto-style4 {
            width: 55%;
        }
        .auto-style5 {
            width: 286px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Please select staff name:</td>
                    <td>Please select year:</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddlName" runat="server" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="EmployeeID" AutoPostBack="True" OnSelectedIndexChanged="ddlName_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Column1" DataValueField="Column1" RepeatDirection="Horizontal">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT EmployeeID ,CONCAT(LastName, ' ', FirstName)  AS FullName FROM Employees"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT OrderID, OrderDate
FROM Orders
WHERE employeeID = @employeeID
AND YEAR(OrderDate) = @OrderDate">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlName" Name="employeeID" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="RadioButtonList1" Name="OrderDate" PropertyName="SelectedValue" />
                        </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT YEAR(OrderDate) 
FROM Orders
WHERE EmployeeID = @EmployeeID
GROUP BY YEAR(OrderDate)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlName" Name="employeeID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT 
    P.ProductName, 
    OD.Quantity, 
    OD.UnitPrice,
    CONCAT(OD.Discount, ' %') AS Discount, 
    CONCAT('$', ROUND(OD.Quantity * OD.UnitPrice, 2 * (1-OD.Discount))) AS Sales
FROM 
    Orders AS O
INNER JOIN 
    &quot;Order Details&quot; AS OD ON O.OrderID = OD.OrderID
INNER JOIN 
    Products AS P ON OD.ProductID = P.ProductID
WHERE 
    O.OrderID = @OrderID;">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="OrderID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblTitle" runat="server"></asp:Label>
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="OrderDate" DataFormatString="{0:dd MMM yyyy}" HeaderText="OrderDate" SortExpression="OrderDate" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:Label ID="lblOldSales" runat="server"></asp:Label>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <ItemStyle BackColor="White" ForeColor="#330099" />
                        <ItemTemplate>
                            ProductName:
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                            <br />
                            Quantity:
                            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                            <br />
                            UnitPrice:
                            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                            <br />
                            Discount:
                            <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount") %>' />
                            <br />
                            Sales:
                            <asp:Label ID="SalesLabel" runat="server" Text='<%# Eval("Sales") %>' />
                            <br />
<br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
