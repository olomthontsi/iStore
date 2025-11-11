<%@ Page Title="View Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" 
    CodeBehind="viewcart.aspx.cs" Inherits="Takealot.addtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Styles/InamStyles.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cart-container">
        <h2>Your Shopping Cart</h2>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Id" DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound"
            CssClass="cart-grid" ShowFooter="True">
            
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Product_Code" HeaderText="Product Code" SortExpression="Product_Code" />
                <asp:BoundField DataField="Model_Name" HeaderText="Model Name" SortExpression="Model_Name" />
                <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                <asp:BoundField DataField="Price" HeaderText="Price (R)" SortExpression="Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="subtotal" HeaderText="Subtotal (R)" SortExpression="subtotal" DataFormatString="{0:C}" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Colour], [Price], [quantity], [subtotal] FROM [Cart]">
        </asp:SqlDataSource>
    </div>

</asp:Content>
