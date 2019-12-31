<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebUI.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../Styles/LoginStyle.css" rel="stylesheet" type="text/css" />  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="DivLogin">
    <asp:Login ID="Login1" runat="server" CssClass="LoginControl"
    CreateUserText="Register"
CreateUserUrl="Signup.aspx"

InstructionText="Please enter your user name and password for login." 
        onauthenticate="Login1_Authenticate" PasswordRecoveryText="Forgot Password" PasswordRecoveryUrl="~/PassswordRecovery.aspx">
    </asp:Login>
    </div>
</asp:Content>

