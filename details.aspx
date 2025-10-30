<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Takealot.details" %>
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
            Colour:
            <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Images:
            <asp:Label ID="ImagesLabel" runat="server" Text='<%# Eval("Images") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [Images] FROM [Product] WHERE ([Product_Code] = @Product_Code)">
        <SelectParameters>
            <asp:SessionParameter Name="Product_Code" SessionField="productcode" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>

        <asp:Button ID="btnaddcart" runat="server" BackColor="Yellow" Text="add to cart" />

    </div>
</asp:Content>
