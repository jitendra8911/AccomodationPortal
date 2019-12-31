<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebUI.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="tblChangePassword">
<tr>
<td>
    <asp:Label ID="lblNewPassword" runat="server" Text="Enter New Password"></asp:Label>
    </td>
<td>
    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="txtNewPassword"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
    </td>
<td>
    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ErrorMessage="Re-enter the password" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
</td>
<td>
    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password doesn't match" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"></asp:CompareValidator>
</td>
</tr>
<tr>
<td>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
</td>
</tr>
<tr> <td> 
    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td></tr>
</table>
</asp:Content>
