<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mac.aspx.cs" Inherits="Takealot.mac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("Images") %>' Width="200px" />
            <br />
            <br />
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Product_Code:
            <asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
            <br />
            Model_Name:
            <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
            <br />
            Storage_capacity:
            <asp:Label ID="Storage_capacityLabel" runat="server" Text='<%# Eval("Storage_capacity") %>' />
            <br />
            Colour:
            <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Product_Type:
            <asp:Label ID="Product_TypeLabel" runat="server" Text='<%# Eval("Product_Type") %>' />
            <br />
            Images:
            <asp:Label ID="ImagesLabel" runat="server" Text='<%# Eval("Images") %>' />
            <br />
            Cost_Price:
            <asp:Label ID="Cost_PriceLabel" runat="server" Text='<%# Eval("Cost_Price") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT * FROM Product WHERE Product_Type LIKE @Filter">
    <SelectParameters>
        <asp:Parameter Name="Filter" Type="String" DefaultValue="%Mac%" />
    </SelectParameters>
</asp:SqlDataSource>


</asp:Content>
