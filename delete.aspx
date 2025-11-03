<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Takealot.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtinput" runat="server"></asp:TextBox>
    <asp:Button ID="btndelete" runat="server" OnClick="Button1_Click" Text="delete" />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Images") %>' Width="200px" />
            <br />
            <br />
            Product_Code:
            <asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
            <br />
            Model_Name:
            <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
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
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Colour:
            <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
            <br />
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Product WHERE (Product_Code = @Product_Code)" InsertCommand="INSERT INTO [Product] ([Product_Code], [Model_Name], [Description], [Product_Type], [Images], [Price], [Colour], [Id]) VALUES (@Product_Code, @Model_Name, @Description, @Product_Type, @Images, @Price, @Colour, @Id)" SelectCommand="SELECT [Product_Code], [Model_Name], [Description], [Product_Type], [Images], [Price], [Colour], [Id] FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_Code] = @Product_Code, [Model_Name] = @Model_Name, [Description] = @Description, [Product_Type] = @Product_Type, [Images] = @Images, [Price] = @Price, [Colour] = @Colour WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:controlParameter ControlID="txtinput" Name="Product_Code" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_Code" Type="String" />
            <asp:Parameter Name="Model_Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Product_Type" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Colour" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Code" Type="String" />
            <asp:Parameter Name="Model_Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Product_Type" Type="String" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Colour" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
