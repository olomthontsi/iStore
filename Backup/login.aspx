<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Takealot.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="accordion-header"></asp:TextBox>
        <br />
        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
        <a href="EditUser.aspx">Forgot Password</a>
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Sign in" OnClick="btnlogin_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Dont have an account?"></asp:Label>
        <a href="register.aspx">Register</a>
    </div> 
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [User_Id], [Name], [Last_Name], [Email], [password], [Phone_Number], [User_Name] FROM [Users]"></asp:SqlDataSource>

    </div>
    <div>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="5" RepeatDirection="Horizontal" DataKeyField="Id">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="200px" ImageUrl='<%# Eval("Images") %>' Width="200px" />
                <br />
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
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model_Name], [Price], [Images], [Id] FROM [Product]"></asp:SqlDataSource>

    </div>
</asp:Content>
