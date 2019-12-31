<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample1.aspx.cs" Inherits="WebUI.Sample1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" onmenuitemclick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="HOUSING" Value="ABOUT" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="ROOMATES" Value="ROOMATES" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="MESSAGEBOARDS" Value="MESSAGEBOARDS" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="RESOURCES" Value="RESOURCES" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="HELP" Value="HELP" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="SIGNUP" Value="SIGNUP" NavigateUrl="">
            </asp:MenuItem>
            <asp:MenuItem Text="LOGIN" Value="LOGIN" NavigateUrl="Sample1.aspx">
            </asp:MenuItem>
        </Items>
        </asp:Menu>
    </div>
    </form>
</body>
</html>
