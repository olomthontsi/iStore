<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Takealot.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>

        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Images") %>' Width="200px" />
                <br />
                <br />
                &nbsp;<asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
                <br />
                &nbsp;<asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
                <br />
                &nbsp;<asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
                <br />
                &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                &nbsp;<asp:Label ID="Product_TypeLabel" runat="server" Text='<%# Eval("Product_Type") %>' />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="quantity"></asp:Label>
                <asp:DropDownList ID="ddlquantity" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="btnaddcart" runat="server" BackColor="Yellow" Text="add to cart" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [Product_Type], [Images] FROM [Product] WHERE ([Product_Code] = @Product_Code)">
            <SelectParameters>
                <asp:SessionParameter Name="Product_Code" SessionField="productcode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Product_Code" HeaderText="Product_Code" SortExpression="Product_Code" />
                <asp:BoundField DataField="Model_Name" HeaderText="Model_Name" SortExpression="Model_Name" />
                <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cart] ([Id], [Product_Code], [Model_Name], [Colour], [Price], [quantity], [Product_Name]) VALUES (@Id, @Product_Code, @Model_Name, @Colour, @Price, @quantity, @Product_Name)" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [quantity], [Product_Name] FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Product_Code] = @Product_Code, [Model_Name] = @Model_Name, [Colour] = @Colour, [Price] = @Price, [quantity] = @quantity, [Product_Name] = @Product_Name WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Product_Code" Type="String" />
                <asp:Parameter Name="Model_Name" Type="String" />
                <asp:Parameter Name="Colour" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="Product_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Code" Type="String" />
                <asp:Parameter Name="Model_Name" Type="String" />
                <asp:Parameter Name="Colour" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
