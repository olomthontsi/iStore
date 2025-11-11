<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Takealot.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 868px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            width: 868px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="IblSearchByProductCode" runat="server" Font-Bold="True" Text="Search by Product code"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtSearchByProductCode" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblId2" runat="server" Font-Bold="True" Text="Id"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtId2" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblProductCode" runat="server" Font-Bold="True" Text="Product Code"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtProductCode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblModelName" runat="server" Font-Bold="True" Text="Model Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtModelName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblStorageCapacity" runat="server" Font-Bold="True" Text="Storage Capacity"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtStorageCapacity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblColour" runat="server" Font-Bold="True" Text="Colour"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtColour" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblPrice" runat="server" Font-Bold="True" Text="Price"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblQuantity" runat="server" Font-Bold="True" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblDescription" runat="server" Font-Bold="True" Text="Description"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblProductType" runat="server" Font-Bold="True" Text="Product Type"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblCostPrice" runat="server" Font-Bold="True" Text="Cost Price"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtCostPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblImages" runat="server" Font-Bold="True" Text="Images"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtImages" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Product_Code" HeaderText="Product_Code" SortExpression="Product_Code" />
                        <asp:BoundField DataField="Model_Name" HeaderText="Model_Name" SortExpression="Model_Name" />
                        <asp:BoundField DataField="Storage_capacity" HeaderText="Storage_capacity" SortExpression="Storage_capacity" />
                        <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Cost_Price" HeaderText="Cost_Price" SortExpression="Cost_Price" />
                        <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
                        <asp:BoundField DataField="Product_Type" HeaderText="Product_Type" SortExpression="Product_Type" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Cost_Price], [Images], [Product_Type]) VALUES (@Id, @Product_Code, @Model_Name, @Storage_capacity, @Colour, @Price, @Quantity, @Description, @Cost_Price, @Images, @Product_Type)" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Cost_Price], [Images], [Product_Type] FROM [Product]" UpdateCommand="UPDATE Product SET Product_Code = @Product_Code, Model_Name = @Model_Name, Storage_capacity = @Storage_capacity, Colour = @Colour, Price = @Price, Quantity = @Quantity, Description = @Description, Cost_Price = @Cost_Price, Images = @Images, Product_Type = @Product_Type WHERE (Id = @Id)">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="Product_Code" Type="String" />
                        <asp:Parameter Name="Model_Name" Type="String" />
                        <asp:Parameter Name="Storage_capacity" Type="String" />
                        <asp:Parameter Name="Colour" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Cost_Price" Type="Decimal" />
                        <asp:Parameter Name="Images" Type="String" />
                        <asp:Parameter Name="Product_Type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:controlParameter ControlID="txtProductCode" Name="Product_Code" Type="String" />
                        <asp:controlParameter ControlID="txtModelName" Name="Model_Name" Type="String" />
                        <asp:controlParameter ControlID="txtStorageCapacity" Name="Storage_capacity" Type="String" />
                        <asp:controlParameter ControlID="txtColour" Name="Colour" Type="String" />
                        <asp:controlParameter ControlID="txtPrice" Name="Price" Type="Decimal" />
                        <asp:controlParameter ControlID="txtQuantity" Name="Quantity" Type="Int32" />
                        <asp:controlParameter ControlID="txtDescription" Name="Description" Type="String" />
                        <asp:controlParameter ControlID="txtCostPrice" Name="Cost_Price" Type="Decimal" />
                        <asp:controlParameter ControlID="txtImages" Name="Images" Type="String" />
                        <asp:controlParameter ControlID="txtProductType" Name="Product_Type" Type="String" />
                        <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
