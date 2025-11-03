<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="details.aspx.cs" Inherits="Takealot.details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Styles/InamStyles.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Product Details Section -->
    <div class="details-container">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1"
            OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="product-list">
            
            <ItemTemplate>
                <div class="product-card">
                    <asp:Image ID="Image1" runat="server" CssClass="product-image"
                        ImageUrl='<%# Eval("Images") %>' AlternateText="Product Image" />

                    <div class="product-info">
                        <h3>
                            <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
                        </h3>
                        <p class="product-code">
                            Code: <asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
                        </p>
                        <p>
                            Color: <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
                        </p>
                        <p>
                            Type: <asp:Label ID="Product_TypeLabel" runat="server" Text='<%# Eval("Product_Type") %>' />
                        </p>
                        <p class="product-price">
                            R <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </p>
                    </div>

                    <div class="product-actions">
                        <label for="ddlquantity">Qty:</label>
                        <asp:DropDownList ID="ddlquantity" runat="server" CssClass="quantity-dropdown">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                        </asp:DropDownList>

                        <asp:Button ID="btnaddcart" runat="server" CssClass="btn-addcart" Text="Add to Cart" CommandName="AddToCart" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>

        <!-- Product SQL Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [Product_Type], [Images] 
                           FROM [Product] 
                           WHERE ([Product_Code] = @Product_Code)">
            <SelectParameters>
                <asp:SessionParameter Name="Product_Code" SessionField="productcode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <!-- Cart Section -->
    <div class="cart-section">
        <h2>Your Cart</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="cart-grid"
            DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Product_Code" HeaderText="Product Code" SortExpression="Product_Code" />
                <asp:BoundField DataField="Model_Name" HeaderText="Model Name" SortExpression="Model_Name" />
                <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                <asp:BoundField DataField="Price" HeaderText="Price (R)" SortExpression="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="Product_Type" HeaderText="Product Type" SortExpression="Product_Type" />
            </Columns>
        </asp:GridView>

        <!-- Cart SQL Source -->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [quantity], [Product_Type] FROM [Cart]"
            InsertCommand="INSERT INTO [Cart] ([Id], [Product_Code], [Model_Name], [Colour], [Price], [quantity], [Product_Type]) 
                           VALUES (@Id, @Product_Code, @Model_Name, @Colour, @Price, @quantity, @Product_Type)"
            UpdateCommand="UPDATE [Cart] 
                           SET [Product_Code] = @Product_Code, 
                               [Model_Name] = @Model_Name, 
                               [Colour] = @Colour, 
                               [Price] = @Price, 
                               [quantity] = @quantity, 
                               [Product_Type] = @Product_Type 
                           WHERE [Id] = @Id"
            DeleteCommand="DELETE FROM [Cart] WHERE [Id] = @Id">

            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter SessionField="id" Name="Id" Type="Int32" />
                <asp:SessionParameter SessionField="codesession" Name="Product_Code" Type="String" />
                <asp:SessionParameter SessionField="namesession" Name="Model_Name" Type="String" />
                <asp:SessionParameter SessionField="colorsession" Name="Colour" Type="String" />
                <asp:SessionParameter SessionField="pricesession" Name="Price" Type="String" />
                <asp:SessionParameter SessionField="quantity_session" Name="quantity" Type="Int32" />
                <asp:SessionParameter SessionField="typesession" Name="Product_Type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Code" Type="String" />
                <asp:Parameter Name="Model_Name" Type="String" />
                <asp:Parameter Name="Colour" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="Product_Type" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
