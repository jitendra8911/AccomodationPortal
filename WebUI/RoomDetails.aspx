<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true"
    CodeBehind="RoomDetails.aspx.cs" Inherits="WebUI.WebForm13" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblRoomId" runat="server"></asp:Label>
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
    <div id="panelNavigation" style="display: none;" class="popupNavigation">
            <div class="popup_Container">
                
                <div class="popup_Body">
                    <p>
                        Please Login
                    </p>
                </div>
                <div class="popup_Buttons">
                 
                        <asp:Button ID="btnOk" runat="server" Text="OK" CausesValidation="false" PostBackUrl="~/Login.aspx" />
                   
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />
                </div>
            </div>
        </div>
    
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="panelNavigation"
                BackgroundCssClass="modalBackground"  TargetControlID="btnReserve"
                CancelControlID="btnCancel">
            </asp:ModalPopupExtender>
</asp:Content>
