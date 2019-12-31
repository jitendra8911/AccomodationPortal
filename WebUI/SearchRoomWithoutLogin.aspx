<%@ Page Title="" Language="C#" MasterPageFile="~/SearchRoomWithoutLogin.Master" AutoEventWireup="true" CodeBehind="SearchRoomWithoutLogin.aspx.cs" Inherits="WebUI.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="Styles/FooterStyleNew.css" rel="stylesheet" type="text/css" />
     <link href="Styles/LoginStyle.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
      <script type="text/javascript" language="javascript">
          $(document).ready(function () {
              $('.links').click(function (e) {
                  $('#<%=lblNoRecords.ClientID%>').css('display', 'none');
                  var lnkText = $(this).text().toLowerCase();
                  
              });
          });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<ul style="list-style-type:none;padding:0px;margin:0px">
 <li> 
     <asp:Button ID="btnAll" runat="server" Text="All" CssClass="links"/></li>
<li><asp:Button ID="btnRange1" runat="server" Text="$240 - $650" /></li>
<li><asp:Button ID="btnRange2" runat="server" Text="$650 - $1200" /></li>
<li><asp:Button ID="btnRange3" runat="server" Text="$1200 - $2000" /></li>
</ul>
</td>
</tr>
</table>
</asp:Content>
