<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebFormsBank.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:CheckBox runat="server" ID="preferredOnly" AutoPostBack="True" Text="Preferred Customers Only"/>
    </div>
    <asp:GridView runat="server" ID="gvCustomers" ItemType="WebFormsBank.Models.Customer" SelectMethod="GetCustomers"
                  AllowPaging="True" PageSize="10" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"/>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"/>
            <asp:BoundField DataField="HomeAddress_AddressLine1" HeaderText="AddressLine1" SortExpression="HomeAddress_AddressLine1"/>
            <asp:BoundField DataField="HomeAddress_AddressLine2" HeaderText="AddressLine2" SortExpression="HomeAddress_AddressLine2"/>
            <asp:BoundField DataField="HomeAddress_City" HeaderText="City" SortExpression="HomeAddress_City"/>
            <asp:BoundField DataField="HomeAddress_State" HeaderText="State" SortExpression="HomeAddress_State"/>
            <asp:BoundField DataField="HomeAddress_Zip" HeaderText="Zip" SortExpression="HomeAddress_Zip"/>
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" SortExpression="PhoneNumber"/>
            <asp:TemplateField HeaderText="Home Branch #">
                <ItemTemplate><%#: Item.Branch.Name %></ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            There are no customers to display.
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>
