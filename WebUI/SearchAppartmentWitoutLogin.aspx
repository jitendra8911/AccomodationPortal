<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="SearchAppartmentWitoutLogin.aspx.cs" Inherits="WebUI.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="divSearchList">
    <asp:GridView ID="GridViewSearchAppartment" Runat="server" 
   AutoGenerateColumns="False" 
  BorderWidth="1px" BackColor="White" CellPadding="3" BorderStyle="None" 
  BorderColor="#CCCCCC" Font-Names="Arial">
    <FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" 
      BackColor="White"></PagerStyle>
    <HeaderStyle ForeColor="White" Font-Bold="True" 
      BackColor="#006699"></HeaderStyle>
    <Columns>
        <asp:BoundField HeaderText="Appartment No" DataField="appartmentNo">
            <ItemStyle HorizontalAlign="Center" 
              VerticalAlign="Middle"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField HeaderText="Address" DataField="address"></asp:BoundField>
        <asp:BoundField HeaderText="rent" DataField="Rent">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:BoundField>
        <asp:ImageField DataImageUrlField="imgUrl" ControlStyle-Width="300px" ControlStyle-Height="300px"></asp:ImageField>
    </Columns>
    <SelectedRowStyle ForeColor="White" Font-Bold="True" 
       BackColor="#669999"></SelectedRowStyle>
    <RowStyle ForeColor="#000066"></RowStyle>
</asp:GridView>
<div class="divFilter">
this section is for filter
</div>
</div>


</asp:Content>
