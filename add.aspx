<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Takealot.add" %>
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

    .form-row,
    .contact-row,
    .address-city-row,
    .country-postal-row {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 18px;
        gap: 15px;
        flex-wrap: wrap;
    }

    .form-row label,
    .contact-group label,
    .city-postal-group label {
        font-weight: 600;
        color: #333;
        min-width: 120px;
        text-align: left;
    }


    .form-row input[type="text"],
    .form-row input[type="email"],
    .form-row input[type="tel"],
    .form-row input[type="password"],
    .contact-group input,
    .city-postal-group input,
    .dob-fields input {
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


    .form-row input::placeholder,
    .contact-group input::placeholder,
    .city-postal-group input::placeholder,
    .dob-fields input::placeholder {
        color: #aaa; 
    }


    .dob-fields {
        display: flex;
        gap: 5px;
        align-items: center;
    }

    .dob-fields input {
        width: 70px;
        padding: 8px;
        border: 1px solid black;   
        border-radius: 6px;
        outline: 1px solid black;  
        background-color: black;   
        color: white;              
        text-align: center;
        font-size: 14px;
        box-sizing: border-box;
    }

    .dob-fields .separator {
        font-size: 22px;
        color: #333;
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
    <asp:Label ID="PersonalInfo" runat="server" CssClass="personal-info" Text="Personal Information"></asp:Label>
    <div class="divider"></div>


    <div class="form-row">
                <asp:Label ID="IblId" runat="server" Text="ID"></asp:Label>
        <asp:TextBox ID="txtID" runat="server"  Height="36px" Width="53px" Enabled="False"></asp:TextBox>  
        <asp:Label ID="Ibluserid" runat="server" Text="User ID"></asp:Label>
        <asp:TextBox ID="txtuserid" runat="server" placeholder="Required" Height="36px" Width="91px" Enabled="False"></asp:TextBox>  
    </div>

    <div class="form-row">
        <asp:Label ID="IblFirstName" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" placeholder="Required field"></asp:TextBox> 
        <asp:Label ID="IblLastName" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" placeholder="Required field" Height="38px" Width="163px"></asp:TextBox> 
         <asp:Label ID="IblUserName" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Required field" Height="38px" Width="163px"></asp:TextBox> 
    </div>
        <div class="form-row">
        <asp:Label ID="IblDob" runat="server" Text="Date of Birth"></asp:Label>
        <div class="dob-fields">
            <asp:TextBox ID="txtDay" runat="server" maxlength="2" placeholder="DD" Height="36px" Width="60px"></asp:TextBox>
            <span class="separator">/</span>
            <asp:TextBox ID="txtMonth" runat="server" maxlength="4" placeholder="MM" Height="36px" Width="126px"></asp:TextBox>
            <span class="separator">/</span>
            <asp:TextBox ID="txtYear" runat="server" maxlength="4" placeholder="YYYY" Height="36px" Width="67px"></asp:TextBox>
        </div>
    </div>

    <div class="contact-row">
        <div class="contact-group">
            <asp:Label ID="iblEmail" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Required field" Height="36px" Width="151px"></asp:TextBox>
        </div>
        <div class="contact-group">
            <asp:Label ID="IblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Required field" Height="34px" Width="175px"></asp:TextBox>
              </div>
                    <div class="contact-group">
            <asp:Label ID="Ibl1Password" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" placeholder="Required field" Height="34px" Width="172px"></asp:TextBox>
        </div>
    </div>




    <div class="address-city-row">
        <div class="contact-group">
            <asp:Label ID="IblAddress" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
        <div class="contact-group">
            <asp:Label ID="IblSuburb" runat="server" Text="Suburb"></asp:Label>
            <asp:TextBox ID="txtSuburb" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
                <div class="contact-group">
             <asp:Label ID="IblCity" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
    </div>

 
<div class="country-postal-row">
            <div class="contact-group">
            <asp:Label ID="IblPostalCode" runat="server" Text="Postal Code"></asp:Label>
            <asp:TextBox ID="txtPostalCode" runat="server" placeholder="Required field" Height="38px" Width="78px"></asp:TextBox>
        </div>
    <div class="contact-group">
        <asp:Label ID="IblCountry" runat="server" Text="Country"></asp:Label>
        <asp:TextBox ID="txtCountry" runat="server" placeholder="Required field"></asp:TextBox>
    </div>
    <div class="contact-group">
        <asp:Label ID="IblProvince" runat="server" Text="Province"></asp:Label>
        <asp:TextBox ID="txtProvince" runat="server" placeholder="Required field"></asp:TextBox>
    </div>
</div>

    <asp:Button ID="btnAdd" class="update-btn" runat="server" Text="Add User" OnClick="btnAdd_Click" />
          </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [User_Id], [Username], [FirstName], [LastName], [Email], [Password], [Phone_Number], [Day], [Month], [Year], [Address], [Suburb], [City], [Country], [PostalCode], [Province]) VALUES (@Id, @User_Id, @Username, @FirstName, @LastName, @Email, @Password, @Phone_Number, @Day, @Month, @Year, @Address, @Suburb, @City, @Country, @PostalCode, @Province)" SelectCommand="SELECT [Id], [User_Id], [Username], [FirstName], [LastName], [Email], [Password], [Phone_Number], [Day], [Month], [Year], [Address], [Suburb], [City], [Country], [PostalCode], [Province] FROM [Users]" UpdateCommand="UPDATE [Users] SET [User_Id] = @User_Id, [Username] = @Username, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Password] = @Password, [Phone_Number] = @Phone_Number, [Day] = @Day, [Month] = @Month, [Year] = @Year, [Address] = @Address, [Suburb] = @Suburb, [City] = @City, [Country] = @Country, [PostalCode] = @PostalCode, [Province] = @Province WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:controlParameter ControlID="txtID" Name="Id" Type="Int32" />
                <asp:controlParameter ControlID="txtuserid" Name="User_Id" Type="String" />
                <asp:controlParameter ControlID="txtUsername" Name="Username" Type="String" />
                <asp:controlParameter ControlID="txtName" Name="FirstName" Type="String" />
                <asp:controlParameter ControlID="txtLastName" Name="LastName" Type="String" />
                <asp:controlParameter ControlID="txtEmail" Name="Email" Type="String" />
                <asp:controlParameter ControlID="TxtPassword" Name="Password" Type="String" />
                <asp:controlParameter ControlID="txtPhoneNumber" Name="Phone_Number" Type="String" />
                <asp:controlParameter ControlID="txtDay" Name="Day" Type="Int32" />
                <asp:controlParameter ControlID="txtMonth" Name="Month" Type="String" />
                <asp:controlParameter ControlID="txtYear" Name="Year" Type="String" />
                <asp:controlParameter ControlID="txtAddress" Name="Address" Type="String" />
                <asp:controlParameter ControlID="txtSuburb" Name="Suburb" Type="String" />
                <asp:controlParameter ControlID="txtCity" Name="City" Type="String" />
                <asp:controlParameter ControlID="txtCountry" Name="Country" Type="String" />
                <asp:controlParameter ControlID="txtPostalCode" Name="PostalCode" Type="String" />
                <asp:controlParameter ControlID="txtProvince" Name="Province" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_Id" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Day" Type="Int32" />
                <asp:Parameter Name="Month" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Suburb" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </asp:Content>
