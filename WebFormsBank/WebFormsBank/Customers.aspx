<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebFormsBank.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <asp:Repeater runat="server" ID="rptCustomers">
            <ItemTemplate>
                <li><%# Eval("Name") %> - <%# Eval("PhoneNumber") %></li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</asp:Content>
