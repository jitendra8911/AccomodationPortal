<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="PassswordRecovery.aspx.cs" Inherits="WebUI.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table class="tblPassowrdRecovery">
   <tr>
   <td>
       <asp:Label ID="lblLoginId" runat="server" Text="Enter LoginId"></asp:Label> </td>
       <td> 
           <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox></td>
           <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorLoginId" runat="server" 
                   ErrorMessage="Please Enter LoginId" ControlToValidate="txtLoginId" 
                   Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator> </td>
   </tr>
   <tr>
   <td><asp:Label ID="lblSecurityQuestion" runat="server" Text="Select Security Question"></asp:Label> </td>
   <td>
       <asp:DropDownList ID="ddlSecurityQuestion" runat="server" 
           DataSourceID="SqlDataSourceValidateSecurityQuestion" 
           DataTextField="securityquestion" DataValueField="securityquestion">
       </asp:DropDownList> 
       <asp:SqlDataSource ID="SqlDataSourceValidateSecurityQuestion" runat="server" 
           ConnectionString="<%$ ConnectionStrings:AccommodationPortalConnectionString %>" 
           SelectCommand="select securityquestion from securityInfo">
       </asp:SqlDataSource>
       </td>
       <td> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorSecurityQuestion" 
               runat="server" ErrorMessage="Please Select Security Question" Display="Dynamic" 
               ControlToValidate="ddlSecurityQuestion" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
   </tr>
   <tr>
   <td> 
       <asp:Label ID="lblSecurityAnswer" runat="server" Text="Enter security Answer"></asp:Label></td>
     <td>  <asp:TextBox ID="txtSecurityAnswer" runat="server" TextMode="Password"></asp:TextBox> </td>
       <td> <asp:RequiredFieldValidator ID="RequiredFieldValidatorSecurityAnswer" 
               runat="server" ErrorMessage="Please Enter Security Answer" 
               ControlToValidate="txtSecurityAnswer" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
       </td>
   </tr>
   <tr><td>
       <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
           onclick="btnSubmit_Click" /> </td></tr>
       <tr><td> 
           <asp:Label ID="lblSecurityCheck" runat="server"></asp:Label></td></tr>
   </table>
    
</asp:Content>
