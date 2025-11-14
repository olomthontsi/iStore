<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="search.aspx.cs" Inherits="Takealot.search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Styles/inam2.css" />
    <style type="text/css">
        .newStyle1 {
            font-weight: bold;
        }
        .newStyle2 {
            font-style: italic;
            font-weight: bold;
        }
        .newStyle3 {
            font-size: large;
            font-weight: bold;
            text-transform: uppercase;
            font-style: italic;
        }
        .newStyle4 {
            font-size: medium;
            color: #6C757D;
        }
        .newStyle5 {
            color: #86B7FE;
            font-size: x-small;
        }
        .newStyle6 {
            color: #86B7FE;
            font-size: small;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="search-results-container">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" 
            RepeatColumns="4" RepeatDirection="Horizontal" CssClass="product-list" OnItemCommand="DataList1_ItemCommand">


            <ItemTemplate>
                <div class="product-card">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="product-image"
                        ImageUrl='<%# Eval("Images") %>' AlternateText="Product Image" Width="200px" Height="200px" />

                    <div class="product-info">
                        <h3 class="newStyle3"><%# Eval("Model_Name") %></h3>
                         <p class="newStyle4"> R <%# Eval("Price") %></p>
                        <p class="newStyle6"> <%# Eval("Storage_capacity") %></p>
                    </div>

                    <div class="product-actions">
                        <asp:Button ID="btnViewDetails" runat="server" CssClass="btn-view-details"
                            Text="View Details" CommandName="ViewDetails"
                            CommandArgument='<%# Eval("Product_Code") %>' />
                    </div>
                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT Id, Product_Code, Model_Name, Storage_capacity, Colour, Price, Quantity, Description, Product_Type, Images, Cost_Price
                           FROM Product
                           WHERE (Product_Code LIKE '%' + @search + '%')
                              OR (Model_Name LIKE '%' + @search + '%')
                              OR (Colour LIKE '%' + @search + '%')
                              OR (Description LIKE '%' + @search + '%')
                              OR (Product_Type LIKE '%' + @search + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="search" SessionField="product" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
