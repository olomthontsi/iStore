<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Takealot.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

/* --- Main Admin Container --- */
.admin-container {
    justify-content:center;
    max-width: 1200px;
    margin: 9px auto;
    padding: 30px;
    background: white;
    border-radius: 12px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
}

/* --- Titles --- */
.admin-title {
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

.section-title {
    font-size: 1.3rem;
    font-weight: 600;
    color: #333;
    margin: 40px 0 15px 0;
}

.delete-box {
    background-color: #f8f9fb;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 25px;
    margin-bottom: 30px;
}

.input-section {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 15px;
}

.input-label {
    font-weight: 600;
    color: #555;
}

.input-field {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    min-width: 220px;
    font-size: 14px;
}

    .input-field:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 4px rgba(0,123,255,0.4);
    }

/* --- Buttons --- */
.btn {
    padding: 10px 20px;
    border-radius: 6px;
    border: none;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.2s ease;
}

.btn-delete {
    background-color: #e63946;
    color: white;
}

    .btn-delete:hover {
        background-color: #d62839;
    }

.confirmation-text {
    display: block;
    margin-top: 20px;
    font-size: 1rem;
    font-weight: 600;
    color: #444;
}

.confirm-buttons {
    margin-top: 15px;
}

.btn-yes {
    background-color: #28a745;
    color: white;
    margin-right: 10px;
}

    .btn-yes:hover {
        background-color: #218838;
    }

.btn-no {
    background-color: #6c757d;
    color: white;
}

    .btn-no:hover {
        background-color: #5a6268;
    }

/* --- Product List Grid --- */
.product-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

.product-card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.08);
    overflow: hidden;
    text-align: center;
    width: 220px;
    padding-bottom: 15px;
    transition: transform 0.25s ease, box-shadow 0.25s ease;
}

    .product-card:hover {
        transform: translateY(-4px);
        box-shadow: 0 6px 12px rgba(0,0,0,0.15);
    }

.product-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-bottom: 1px solid #eee;
}

.product-info {
    padding: 10px;
}

    .product-info p {
        font-size: 0.9rem;
        margin: 3px 0;
        color: #555;
    }

/* --- Responsive --- */
@media (max-width: 768px) {
    .input-section {
        flex-direction: column;
        align-items: flex-start;
    }

    .product-card {
        width: 46%;
    }
}

@media (max-width: 500px) {
    .product-card {
        width: 100%;
    }
}


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-container">
        <h2 class="admin-title">&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="31px" ImageUrl="~/images/bin.png" Width="41px" />
            Delete Product <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/bin.png" Width="41px" Height="31px" />
        </h2>
            <div class="divider"></div>

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
            <h3 class="section-title">&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="19px" ImageUrl="~/images/box.png" Width="24px" />
                Product List</h3>
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
