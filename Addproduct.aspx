<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Takealot.Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/Styles/OlwethuStyles.css"/>
    <style>
        .form-container {
            max-width: 1200px;
            margin: 9px auto;
            padding: 30px;
            background:white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
            font-family: 'Segoe UI', sans-serif;
        }

        .personal-info {
            display: block;       
            width: 100%;
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 30px;
            text-transform: uppercase;
            text-align: center;   
            color: #333;
        }

        .divider {
            width: 60%;           
            height: 3px;         
            background-color: black;
            margin: 0px auto 20px;      
        }

        .form-row {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 18px;
            gap: 15px;
            flex-wrap: wrap;
        }

        .form-row label {
            font-weight: 600;
            color: #333;
            min-width: 120px;
            text-align: left;
        }

        .form-row input[type="text"], .form-row input[type="number"], .form-row input[type="file"] {
            width: 150px;
            height:35px;
            padding: 10px 14px;
            border: 1px solid #ccc;
            border-radius: 0px;
            font-size: 14px;
            outline: 0px solid black;  
            box-sizing: border-box;
            background-color: white;  
            color: black;    
        }

        .form-row input::placeholder {
            color: #aaa; 
        }

        .update-btn {
            width: 350px;
            padding: 12px 0;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            background-color:black;
            color: #fff;
            cursor: pointer;
            display: block;
            margin: 20px auto 0;
            transition: 0.3s;
        }

        .update-btn:hover {
            background-color: #555;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <asp:Label ID="PersonalInfo" runat="server" CssClass="personal-info" Text="Product Information"></asp:Label>
        <div class="divider"></div>

        <!-- Product Form -->
        <div class="form-row">
            <asp:Label ID="lblProductCode" runat="server" Text="Product Code"></asp:Label>
            <asp:TextBox ID="txtProductCode" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblModelName" runat="server" Text="Model Name"></asp:Label>
            <asp:TextBox ID="txtModelName" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblStorage" runat="server" Text="Storage Capacity"></asp:Label>
            <asp:TextBox ID="txtStorage" runat="server" placeholder="Required"></asp:TextBox>
        </div>

        <div class="form-row">
            <asp:Label ID="lblColour" runat="server" Text="Colour"></asp:Label>
            <asp:TextBox ID="txtColour" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            <asp:TextBox ID="txtQuantity" runat="server" placeholder="Required"></asp:TextBox>
        </div>

        <div class="form-row">
            <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblProductType" runat="server" Text="Product Type"></asp:Label>
            <asp:TextBox ID="txtProductType" runat="server" placeholder="Required"></asp:TextBox>

            <asp:Label ID="lblImages" runat="server" Text="Images"></asp:Label>
            <asp:TextBox ID="txtImages" runat="server" placeholder="Image path"></asp:TextBox>
        </div>

        <div class="form-row">
            <asp:Label ID="lblCostPrice" runat="server" Text="Cost Price"></asp:Label>
            <asp:TextBox ID="txtCostPrice" runat="server" placeholder="Required"></asp:TextBox>
        </div>

        <asp:TextBox ID="txtID" runat="server" Visible="False"></asp:TextBox>

        <asp:Button ID="btnAddProduct" CssClass="update-btn" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" />

        <!-- GridView -->
        <div style="margin-top: 40px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Product_Code" HeaderText="Product_Code" SortExpression="Product_Code" />
                    <asp:BoundField DataField="Model_Name" HeaderText="Model_Name" SortExpression="Model_Name" />
                    <asp:BoundField DataField="Storage_capacity" HeaderText="Storage_capacity" SortExpression="Storage_capacity" />
                    <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Product_Type" HeaderText="Product_Type" SortExpression="Product_Type" />
                    <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
                    <asp:BoundField DataField="Cost_Price" HeaderText="Cost_Price" SortExpression="Cost_Price" />
                </Columns>
            </asp:GridView>

            <!-- SqlDataSource -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price] FROM [Product]"
    InsertCommand="INSERT INTO [Product] ([Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price]) VALUES (@Id, @Product_Code, @Model_Name, @Storage_capacity, @Colour, @Price, @Quantity, @Description, @Product_Type, @Images, @Cost_Price)" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" UpdateCommand="UPDATE [Product] SET [Product_Code] = @Product_Code, [Model_Name] = @Model_Name, [Storage_capacity] = @Storage_capacity, [Colour] = @Colour, [Price] = @Price, [Quantity] = @Quantity, [Description] = @Description, [Product_Type] = @Product_Type, [Images] = @Images, [Cost_Price] = @Cost_Price WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
    <InsertParameters>
        <asp:controlParameter ControlID="txtID" Name="Id" Type="Int32" />
        <asp:controlParameter ControlID="txtProductCode" Name="Product_Code" Type="String" />
        <asp:controlParameter ControlID="txtModelName" Name="Model_Name" Type="String" />
        <asp:controlParameter ControlID="txtStorage" Name="Storage_capacity" Type="String" />
        <asp:controlParameter ControlID="txtColour" Name="Colour" Type="String" />
        <asp:controlParameter ControlID="txtPrice" Name="Price" Type="Decimal" />
        <asp:controlParameter ControlID="txtQuantity" Name="Quantity" Type="Int32" />
        <asp:controlParameter ControlID="txtDescription" Name="Description" Type="String" />
        <asp:controlParameter ControlID="txtProductType" Name="Product_Type" Type="String" />
        <asp:controlParameter ControlID="txtImages" Name="Images" Type="String" />
        <asp:controlParameter ControlID="txtCostPrice" Name="Cost_Price" Type="Decimal" />
    </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Product_Code" Type="String" />
                    <asp:Parameter Name="Model_Name" Type="String" />
                    <asp:Parameter Name="Storage_capacity" Type="String" />
                    <asp:Parameter Name="Colour" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Product_Type" Type="String" />
                    <asp:Parameter Name="Images" Type="String" />
                    <asp:Parameter Name="Cost_Price" Type="Decimal" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
</asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
