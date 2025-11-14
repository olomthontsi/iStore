<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Watches.aspx.cs" Inherits="Takealot.Watches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
          <ItemTemplate>
                        <asp:ImageButton 
    ID="ImageButton1" 
    runat="server" 
    ImageUrl='<%# Eval("Images") %>' 
    CommandName="ViewDetails"
    CommandArgument='<%# Eval("Product_Code") %>' Height="300px" Width="300px" 
/>
           
              <br />
              &nbsp;<asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' Visible="False" />
            <br />
            &nbsp;<asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />

          </ItemTemplate>
      </asp:DataList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price]
                   FROM [Product]
                   WHERE [Product_Type] = 'Watches'">
</asp:SqlDataSource>
</asp:Content>
