<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebFormsBank.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="gvBranches" ItemType="WebFormsBank.Models.Branch" AutoGenerateSelectButton="True"
                  AllowPaging="True" PageSize="10" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" SelectMethod="GetBranches" SelectedRowStyle-BackColor="#ffffff">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"/>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"/>
            <asp:BoundField DataField="Address_AddressLine1" HeaderText="AddressLine1" SortExpression="Address_AddressLine1"/>
            <asp:BoundField DataField="Address_AddressLine2" HeaderText="AddressLine2" SortExpression="Address_AddressLine2"/>
            <asp:BoundField DataField="Address_City" HeaderText="City" SortExpression="Address_City"/>
            <asp:BoundField DataField="Address_State" HeaderText="State" SortExpression="Address_State"/>
            <asp:BoundField DataField="Address_Zip" HeaderText="Zip" SortExpression="Address_Zip"/>
        </Columns>
    </asp:GridView>
    <div>
        <asp:CheckBox runat="server" ID="preferredOnly" AutoPostBack="True" Text="Preferred Customers Only"/>
    </div>
    <asp:GridView runat="server" ID="gvCustomers" ItemType="WebFormsBank.Models.Customer" SelectMethod="GetCustomers" AutoGenerateEditButton="True" UpdateMethod="UpdateCustomer"
                  AllowPaging="True" PageSize="10" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True"/>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <ItemTemplate><%#: Item.Name %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="Name" Text="<%#: BindItem.Name %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="Name" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="AddressLine1" SortExpression="HomeAddress_AddressLine1">
                <ItemTemplate><%#: Item.HomeAddress_AddressLine1 %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="HomeAddress_AddressLine1" Text="<%#: BindItem.HomeAddress_AddressLine1 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvHomeAddress_AddressLine1" ControlToValidate="HomeAddress_AddressLine1" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="AddressLine2" SortExpression="HomeAddress_AddressLine2">
                <ItemTemplate><%#: Item.HomeAddress_AddressLine2 %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="HomeAddress_AddressLine2" Text="<%#: BindItem.HomeAddress_AddressLine2 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvHomeAddress_AddressLine2" ControlToValidate="HomeAddress_AddressLine2" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="City" SortExpression="HomeAddress_City">
                <ItemTemplate><%#: Item.HomeAddress_City %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="HomeAddress_City" Text="<%#: BindItem.HomeAddress_City %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvHomeAddress_City" ControlToValidate="HomeAddress_City" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="State" SortExpression="HomeAddress_State">
                <ItemTemplate><%#: Item.HomeAddress_State %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="HomeAddress_State" Text="<%#: BindItem.HomeAddress_State %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvHomeAddress_State" ControlToValidate="HomeAddress_State" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Zip" SortExpression="HomeAddress_Zip">
                <ItemTemplate><%#: Item.HomeAddress_Zip %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="HomeAddress_Zip" Text="<%#: BindItem.HomeAddress_Zip %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvHomeAddress_Zip" ControlToValidate="HomeAddress_Zip" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="PhoneNumber" SortExpression="PhoneNumber">
                <ItemTemplate><%#: Item.PhoneNumber %></ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="PhoneNumber" Text="<%#: BindItem.PhoneNumber %>"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvPhoneNumber" ControlToValidate="PhoneNumber" ForeColor="#ff0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Home Branch #">
                <ItemTemplate><%#: Item.Branch.Name %></ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            There are no customers to display.
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>
