<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Takealot.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="/Styles/inam3.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-container">
        <h2 class="admin-title">🗑️ Delete Product</h2>

        <div class="delete-box">
            <div class="input-section">
                <label for="txtinput" class="input-label">Enter Product Code:</label>
                <asp:TextBox ID="txtinput" runat="server" CssClass="input-field" />
                <asp:Button ID="btndelete" runat="server" CssClass="btn btn-delete" OnClick="Button1_Click" Text="Delete" />
            </div>

            <asp:Label ID="lblconfirmation" runat="server" Text="Are you sure you want to delete this product?" CssClass="confirmation-text" Visible="False"></asp:Label>

            <div class="confirm-buttons">
                <asp:Button ID="btnyes" runat="server" CssClass="btn btn-yes" OnClick="btnyes_Click" Text="Yes" Visible="False" />
                <asp:Button ID="btnno" runat="server" CssClass="btn btn-no" OnClick="btnno_Click" Text="No" Visible="False" />
            </div>
        </div>

        <div class="product-list">
            <h3 class="section-title">📦 Product List</h3>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="product-grid">
                <ItemTemplate>
                    <div class="product-card">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Images") %>' CssClass="product-image" />
                        <div class="product-info">
                            <p><strong><%# Eval("Model_Name") %></strong></p>
                            <p>Code: <%# Eval("Product_Code") %></p>
                            <p>Price: R<%# Eval("Price") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource 
                ID="SqlDataSource1" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                DeleteCommand="DELETE FROM Product WHERE (Product_Code = @Product_Code)" 
                SelectCommand="SELECT [Product_Code], [Model_Name], [Description], [Product_Type], [Images], [Price], [Colour], [Id] FROM [Product]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="txtinput" Name="Product_Code" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
