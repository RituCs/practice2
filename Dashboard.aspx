<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="UserRegistration.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="table-style">
        <tr>
            <td colspan="2">
            <asp:Label runat="server" class="label-header" ID="label"></asp:Label>
            </td>
        </tr>
        <tr>
         <td colspan="2">
                <asp:Button ID="LogOutButton" runat="server" Text="LogOut" BackColor="#7494ec" ForeColor="White" CssClass="button-style" OnClick="LogOut" />
         </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView runat="server" HeaderStyle-BackColor="#7494ec" HeaderStyle-ForeColor="#FFFFFF" CssClass="gridview-style" ID="GridView" ></asp:GridView>
             
            </td>
            
        </tr>
    </table>
</asp:Content>
