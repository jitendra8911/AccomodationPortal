<%@ Page Title="" Language="C#" MasterPageFile="~/SearchRoomWithoutLogin.Master" AutoEventWireup="true" CodeBehind="SearchRoom.aspx.cs" Inherits="WebUI.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="Styles/FooterStyleNew.css" rel="stylesheet" type="text/css" />
<link href="Styles/LoginStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridViewPriceRange1" Runat="server" 
   AutoGenerateColumns="False" 
  BorderWidth="1px" BackColor="White" CellPadding="3" BorderStyle="None" 
  BorderColor="#CCCCCC" Font-Names="Arial"  DataSourceID="GridDataSource">
    <FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" 
      BackColor="White"></PagerStyle>
    <HeaderStyle ForeColor="White" Font-Bold="True" 
      BackColor="#006699"></HeaderStyle >
    <Columns>
  <asp:TemplateField Visible="false">
        <ItemTemplate>
            <asp:Label ID="lblRoomId" runat="server" Text='<%# Eval("roomId") %>' ></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="Appartment No" DataField="appartmentNo" >
            <ItemStyle HorizontalAlign="Center" 
              VerticalAlign="Middle"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField HeaderText="Address" DataField="address"></asp:BoundField>
        <asp:BoundField HeaderText="rent" DataField="Rent">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:BoundField>
        <asp:TemplateField >
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1"  runat="server"  ImageUrl='<%# Eval("imgUrl") %>' onclick="GetRoomDetails_Click" style="width:300px;height:300px"/>
        </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <SelectedRowStyle ForeColor="White" Font-Bold="True" 
       BackColor="#669999"></SelectedRowStyle>
    <RowStyle ForeColor="#000066"></RowStyle>
</asp:GridView>
<asp:SqlDataSource ID="GridDataSource" runat="server"
    
        SelectCommand="select roomId,appartmentNo,address,imgUrl,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where  i.imgId=r.ImgId and r.type='empty'" 
        ConnectionString="<%$ ConnectionStrings:AccommodationPortalConnectionString %>">
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<table>
<tr>
<th>
Price Range
</th>
</tr>
<tr>
<td>
<asp:CheckBoxList id="check1" AutoPostBack="True"
TextAlign="Right" OnSelectedIndexChanged="Check"
runat="server">
<asp:ListItem  Selected="True" Value="all">All</asp:ListItem>
<asp:ListItem Value="rent >=240 and rent<650" >$240 - $650</asp:ListItem>
<asp:ListItem Value="rent >= 650 and rent<1200">$650 - $1200</asp:ListItem>
<asp:ListItem Value="rent >=1200 and rent<2000">$1200 - $2000</asp:ListItem>
</asp:CheckBoxList>
</td>
</tr>
</table>
</asp:Content>
