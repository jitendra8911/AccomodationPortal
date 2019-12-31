<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="CompareRooms.aspx.cs" Inherits="WebUI.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Table ID="tblRoomDetails" runat="server" Width="800">
    </asp:Table>
    <asp:Button ID="btnBack" runat="server" Text="Back To Search" 
        onclick="btnBack_Click" />
</asp:Content>
