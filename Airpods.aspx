<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Airpods.aspx.cs" Inherits="Takealot.Airpods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
         <asp:ImageButton 
    runat="server" 
    ImageUrl='<%# Eval("Images") %>' 
    CommandName="ViewDetails"
    CommandArgument='<%# Eval("Product_Code") %>' Height="300px" Width="300px" 
/>
            <br />
&nbsp;<asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
            <br />
            Model_Name:
            <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
            <br />
            Product_Type:
            <asp:Label ID="Product_TypeLabel" runat="server" Text='<%# Eval("Product_Type") %>' />
            <br />
            Images:
            <asp:Label ID="ImagesLabel" runat="server" Text='<%# Eval("Images") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price]
                   FROM [Product]
                   WHERE [Product_Type] = 'Airpods'">
</asp:SqlDataSource>

</asp:Content>
