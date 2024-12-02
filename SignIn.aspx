<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="UserRegistration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="table-style">
     <tr>
       <td class="header" colspan="2">USER LOGIN FORM</td>
 
    </tr>
    <tr>
        <td>User Name</td>
        <td>
            <asp:TextBox ID="usernameTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter User Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="usernameTextbox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password</td>
        <td>
            <asp:TextBox ID="passwordTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Password" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="passwordTextbox"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="loginButton" runat="server" Text="LogIn" BackColor="#7494ec" ForeColor="White" OnClick="loginButton_Click" />
        </td>
    </tr>
</table>
</asp:Content>
