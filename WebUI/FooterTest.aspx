<%@ Page Title="" Language="C#" MasterPageFile="~/SampleFooterTest.Master" AutoEventWireup="true" CodeBehind="FooterTest.aspx.cs" Inherits="WebUI.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="../Styles/LoginStyle.css" rel="stylesheet" type="text/css" /> --%> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="DivLogin">
    <asp:Login ID="Login1" runat="server" CssClass="LoginControl"
    CreateUserText="Register"
CreateUserUrl="Signup.aspx"
HelpPageText="Additional Help" HelpPageUrl="Help.aspx"
InstructionText="Please enter your user name and password for login." 
        onauthenticate="Login1_Authenticate">
    </asp:Login>
    </div>

</asp:Content>
