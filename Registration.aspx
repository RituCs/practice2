<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UserRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="table-style">
         <tr>
           <td class="header" colspan="2">USER REGISTRATION FORM</td>
     
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="firstnameTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter First Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="firstnameTextbox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Middle Name</td>
            <td>
                <asp:TextBox ID="middlenameTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Last Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="middlenameTextbox"></asp:RequiredFieldValidator>
           </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="lastnameTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Middle Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="lastnameTextbox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <asp:RadioButtonList ID="radiobutton" runat="server" RepeatDirection="Horizontal">
                    
                </asp:RadioButtonList><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Select Gender" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="radiobutton"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td>
                <asp:TextBox ID="mobilenumTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Give Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="mobilenumTextbox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator runat="server" ErrorMessage="Please Give Valid Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="mobilenumTextbox" ValidationExpression="^([0]|\+91)?\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="emailTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Give Email ID" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="emailTextbox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator runat="server" ErrorMessage="Please Give Valid Email ID" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="emailTextbox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Hobbies</td>
            <td>
                <asp:DropDownList ID="dropdown" runat="server">
                
                </asp:DropDownList><asp:RequiredFieldValidator runat="server"  ErrorMessage="Please Select Your Hobbies" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="dropdown"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="addressTextbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please Give Address" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ControlToValidate="addressTextbox"></asp:RequiredFieldValidator>
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
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" BackColor="#7494ec" ForeColor="White" OnClick="SubmitButton_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
