<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Takealot.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtid" runat="server" CssClass="input" placeholder="ID"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
        <asp:TextBox ID="txtname" runat="server" CssClass="input" placeholder="First Name"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
        <asp:TextBox ID="txtsurname" runat="server" CssClass="input" placeholder="Surname"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsurname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
        <asp:TextBox ID="txtemail" runat="server" CssClass="input" TextMode="Email" placeholder="Email"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
        <asp:TextBox ID="txtusername" runat="server" CssClass="input" placeholder="Username"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
         <asp:TextBox ID="txtNumber" runat="server" CssClass="input" placeholder="Number"></asp:TextBox>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is required</asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        <div class="register-link">
            <p>Already have an account? <a href="login.aspx">Login</a></p>
        </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [User_Id], [Name], [Last_Name], [User_Name], [Email], [password], [Phone_Number]) VALUES (@Id, @User_Id, @Name, @Last_Name, @User_Name, @Email, @password, @Phone_Number)" SelectCommand="SELECT [Id], [User_Id], [Name], [Last_Name], [User_Name], [Email], [password], [Phone_Number] FROM [Users]" UpdateCommand="UPDATE [Users] SET [User_Id] = @User_Id, [Name] = @Name, [Last_Name] = @Last_Name, [User_Name] = @User_Name, [Email] = @Email, [password] = @password, [Phone_Number] = @Phone_Number WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:controlParameter ControlID="txtid" Name="Id" Type="Int32" />
                <asp:controlParameter ControlID="txtname" Name="Name" Type="String" />
                <asp:controlParameter ControlID="txtsurname" Name="Last_Name" Type="String" />
                <asp:controlParameter ControlID="txtusername" Name="User_Name" Type="String" />
                <asp:controlParameter ControlID="txtemail" Name="Email" Type="String" />
                <asp:controlParameter ControlID="txtpassword" Name="password" Type="String" />
                <asp:controlParameter ControlID="txtNumber" Name="Phone_Number" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_Id" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="User_Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <div>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatColumns="4">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" ImageUrl='<%# Eval("Images") %>' Width="300px" />
                <br />
                <br />
                Model_Name:
                <asp:Label ID="Model_NameLabel" runat="server" Text='<%# Eval("Model_Name") %>' />
                <br />
                Storage_capacity:
                <asp:Label ID="Storage_capacityLabel" runat="server" Text='<%# Eval("Storage_capacity") %>' />
                <br />
                Colour:
                <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("Colour") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
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
                Cost_Price:
                <asp:Label ID="Cost_PriceLabel" runat="server" Text='<%# Eval("Cost_Price") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price] FROM [Product]"></asp:SqlDataSource>

    </div>
</asp:Content>
