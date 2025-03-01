<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerhere.aspx.cs" Inherits="Registrationform.registerhere" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        .form-container { max-width: 400px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
        .form-group { margin-bottom: 10px; }
        label { display: block; font-weight: bold; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; }
        button { background-color: blue; color: white; padding: 10px; border: none; width: 100%; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Registration Form</h2>

            <div class="form-group">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtNumber">Number:</label>
                <asp:TextBox ID="txtNumber" runat="server" TextMode="Phone" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="ddlCity">City:</label>
                <asp:DropDownList ID="ddlCity" runat="server">
                    <asp:ListItem>Select City</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Karad</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </div>
    </form>

     
</body>
</html>
