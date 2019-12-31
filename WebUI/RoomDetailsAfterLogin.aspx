<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.Master" AutoEventWireup="true" CodeBehind="RoomDetailsAfterLogin.aspx.cs" Inherits="WebUI.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Table ID="tblRoomDetails" runat="server" Width="800">
    </asp:Table>
    <table>
        <tr>
            <td>
                <asp:Button ID="btnBack" runat="server" Text="Back To Results" OnClick="btnBack_Click" />
            </td>
            <td>
                <asp:Button ID="btnReserve" runat="server" Text="Reserve" OnClick="btnReserve_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
