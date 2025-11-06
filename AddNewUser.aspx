<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AddNewUser.aspx.cs" Inherits="Takealot.AddNewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td> 
                <asp:Label ID="IblId" runat="server" Font-Bold="True" Text="Id"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Enabled="False"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="IblUserId" runat="server" Font-Bold="True" Text="User Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserId" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblName" runat="server" Font-Bold="True" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Reqiured field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblSurname" runat="server" Font-Bold="True" Text="Surname"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblUsername" runat="server" Font-Bold="True" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblEmailAddress" runat="server" Font-Bold="True" Text="Email Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblMobileNumber" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IblPassword" runat="server" Font-Bold="True" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Medium" ForeColor="Red">*Required field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
            </td>
        </tr>
        <tr>
            <td>
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
                        <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                        <asp:controlParameter ControlID="txtUserId" Name="User_Id" Type="String" />
                        <asp:controlParameter ControlID="txtName" Name="Name" Type="String" />
                        <asp:controlParameter ControlID="txtSurname" Name="Last_Name" Type="String" />
                        <asp:controlParameter ControlID="txtUsername" Name="User_Name" Type="String" />
                        <asp:controlParameter ControlID="txtEmailAddress" Name="Email" Type="String" />
                        <asp:controlParameter ControlID="txtPassword" Name="password" Type="String" />
                        <asp:controlParameter ControlID="txtMobileNumber" Name="Phone_Number" Type="String" />
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
