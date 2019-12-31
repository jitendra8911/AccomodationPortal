<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebUI.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

    <link href="Styles/nivo-slider.css" rel="stylesheet" type="text/css" />

    <link href="Styles/Default.css" rel="stylesheet" type="text/css" />  
     <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Demo.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divImageSlideshow">

                <div id="nivo-slider"  style="width: 960px">

                    <img src="Images/UTDrive1.jpg" alt="" />

                    <img src="Images/UTDrive2.jpg" alt="" />

                    <img src="Images/UTNorth1.jpg" alt="" />

                    

                </div>
            </div> 
            <script type="text/javascript">

                $(window).load(function () {

                    $('#nivo-slider').nivoSlider();

                });

    </script>
                      
</asp:Content>
