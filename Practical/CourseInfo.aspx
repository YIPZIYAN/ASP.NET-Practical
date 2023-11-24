<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="Practical.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            Bachelor program offered by Faculty of Applied Sciences and Computing:<asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Bachelor of Information Technology (Honours) in Software System Development</asp:ListItem>
                <asp:ListItem>Bachelor of Information Technology (Honours) in Internet Technology</asp:ListItem>
            </asp:BulletedList>
        </div>
</asp:Content>
