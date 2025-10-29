<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Takealot.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtinput" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
<br />
            Product_Code:
            <asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' />
            <br />
            Model_Name:
            <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Product WHERE (Product_Code = @Product_Code)" InsertCommand="INSERT INTO [Product] ([Id], [Product_Code], [Model_Name], [Price], [Images]) VALUES (@Id, @Product_Code, @Model_Name, @Price, @Images)" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Price], [Images] FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_Code] = @Product_Code, [Model_Name] = @Model_Name, [Price] = @Price, [Images] = @Images WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:controlParameter ControlID="txtinput" Name="Product_Code" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Product_Code" Type="String" />
            <asp:Parameter Name="Model_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Images" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Code" Type="String" />
            <asp:Parameter Name="Model_Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Images" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
