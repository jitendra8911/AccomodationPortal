<%@ Page Title="" Language="C#" MasterPageFile="~/SearchRoomAfterLogin.Master" AutoEventWireup="true"
    CodeBehind="SearchRoomAfterLogin.aspx.cs" Inherits="WebUI.WebForm14" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/FooterStyleNew.css" rel="stylesheet" type="text/css" />
    <link href="Styles/LoginStyle.css" rel="stylesheet" type="text/css" />
     <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewPriceRange1" runat="server" AutoGenerateColumns="False"
        BorderWidth="1px" BackColor="White" CellPadding="3" BorderStyle="None" BorderColor="#CCCCCC"
        Font-Names="Arial" DataSourceID="GridDataSource" OnRowCommand="gridMembersList_RowCommand" onrowdatabound="MyGrid_RowDataBound"  >
        <FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
        <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White"></PagerStyle>
        <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#006699"></HeaderStyle>
        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblRoomId" runat="server" Text='<%# Eval("roomId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Appartment No" DataField="appartmentNo">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Address" DataField="address"></asp:BoundField>
            <asp:BoundField HeaderText="rent" DataField="Rent">
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imgUrl") %>'
                        OnClick="GetRoomDetails_Click" Style="width: 300px; height: 300px" />
                        
                </ItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnAddToCompare" runat="server"  Text="Add To Compare" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="More"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <SelectedRowStyle ForeColor="White" Font-Bold="True" BackColor="#669999"></SelectedRowStyle>
        <RowStyle ForeColor="#000066"></RowStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="GridDataSource" runat="server" SelectCommand="select roomId,appartmentNo,address,imgUrl,rent,noOfbedrooms,noOfBathrooms,leaseLength from Images i, Room r where  i.imgId=r.ImgId and r.type='empty'"
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
                <asp:CheckBoxList ID="check1" AutoPostBack="True" TextAlign="Right" OnSelectedIndexChanged="Check"
                    runat="server">
                    <asp:ListItem Selected="True" Value="all">All</asp:ListItem>
                    <asp:ListItem Value="rent >=240 and rent<650">$240 - $650</asp:ListItem>
                    <asp:ListItem Value="rent >= 650 and rent<1200">$650 - $1200</asp:ListItem>
                    <asp:ListItem Value="rent >=1200 and rent<2000">$1200 - $2000</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
    </table>
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
</asp:Content>
