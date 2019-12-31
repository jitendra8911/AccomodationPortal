<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLogin.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebUI.WebForm5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Content.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" 
    src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
    <style type="text/css">
        .available
        {
            color: Green;
        }
        .used
        {
            color: Red;
        }
        .required
        {
            color: Red;
        }
        .hide
        {
            display:none;
        }
    </style>
    
    <script type="text/javascript">
        var emptyUserNameMessage = 'Please enter the username';
        var progressUserNameMessage = 'Checking...';
        var availableUserNameMessage = 'Username is available';
        var usedUserNameMessage = 'Username has been taken';


        $(function() {
            var userNameAvailabilityLabel = $('#<%= lblCheckAvailability.ClientID %>');

            $('#<%= txtLoginId.ClientID %>').blur(function() {
                var userNameTextBox = $('#<%= txtLoginId.ClientID %>');
                var userName = userNameTextBox.val();
                if ($.trim(userName) == '') {
                    userNameAvailabilityLabel
                            .removeClass()
                            .addClass('required')
                            .html(emptyUserNameMessage);
                }
                else {
                    userNameAvailabilityLabel.html('');
                    $('#ProgressDiv').show();

                    $.ajax({
                        type: 'POST',
                        url: 'signup.aspx/CheckUserNameAvailability',
                        data: '{loginId: \'' + userNameTextBox.val() + '\'}',
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: OnCheckUserNameAvailabilitySuccess,
                        error: OnCheckUserNameAvailabilityError
                    });
                }
                return false; //Prevent postback
            });

            function OnCheckUserNameAvailabilitySuccess(response) {
                $('#ProgressDiv').hide();
                if (response != null && response.d != null) {
                    var data = response.d;
                    switch (data) {
                        case 0:
                            userNameAvailabilityLabel
                            .removeClass()
                            .addClass('available')
                            .html(availableUserNameMessage);

                            break;
                        case 1:
                            userNameAvailabilityLabel
                            .removeClass()
                            .addClass('used')
                            .html(usedUserNameMessage);
                            break;
                    }
                }
            }
            function OnCheckUserNameAvailabilityError(xhr, ajaxOptions, thrownError) {
                alert(xhr.statusText);
            }
        });
 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:CalendarExtender ID="CalendarExtenderDOB" runat="server" 
                TargetControlID="txtDOB" StartDate="1990-01-01">
            </asp:CalendarExtender>
    <table class="tableSignUp">
    <tr>
    <td>
        <asp:Label ID="lblLoginId" runat="server" Text="LoginId"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox> </td>
            <td>
                <asp:Label ID="lblCheckAvailability" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLoginId" runat="server" 
                    ErrorMessage="* LoginId is required" Display="Dynamic" ForeColor="Red" 
                    ControlToValidate="txtLoginId"></asp:RequiredFieldValidator> </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox> </td>
            <td> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassowrd" runat="server" 
                    ErrorMessage="* Password is required" ForeColor="Red" Display="Dynamic" 
                    ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblFirstName" runat="server" Text="FirstName"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> </td>
            <td> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" 
                    ErrorMessage="* FirstName is required" ForeColor="Red" Display="Dynamic" 
                    ControlToValidate="txtFirstName"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> </td>
            <td> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" 
                    ErrorMessage="* LastName is required" ForeColor="Red" Display="Dynamic" 
                    ControlToValidate="txtLastName"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label> </td>
       
        <td>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" 
                    ErrorMessage="* Date of Birth is required" ForeColor="Red" 
                     Display="Dynamic" ControlToValidate="txtDOB"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" 
                    ErrorMessage="* State  is required" ForeColor="Red" Display="Dynamic" 
                     ControlToValidate="txtState"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblZipCode" runat="server" Text="ZipCode"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorZipCode" runat="server" 
                    ErrorMessage="* Zip Code is required" ForeColor="Red" Display="Dynamic" 
                     ControlToValidate="txtZipCode"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                    ErrorMessage="* City is required" ForeColor="Red" Display="Dynamic" 
                     ControlToValidate="txtCity"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblAddress1" runat="server" Text="Address1"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress1" runat="server" 
                    ErrorMessage="* Address1 is required" ForeColor="Red" Display="Dynamic" 
                     ControlToValidate="txtAddress1"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblAddress2" runat="server" Text="Address2"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress2" runat="server" 
                    ErrorMessage="* Address2 is required" ForeColor="Red" Display="Dynamic" 
                     ControlToValidate="txtAddress2"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblEmailId" runat="server" Text="EmailId"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox> </td>
             <td> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailId" runat="server" 
                    ErrorMessage="* EmailId is required" ForeColor="Red" 
                     ControlToValidate="txtEmailId" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailId" 
                     runat="server" ErrorMessage="Enter valid emailid" Display="Dynamic" 
                     ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                     ControlToValidate="txtEmailId"></asp:RegularExpressionValidator>
                    
                    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblQualification" runat="server" Text="Qualification"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtQualification" runat="server"></asp:TextBox> </td>
           <td> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorQualification" runat="server" 
                    ErrorMessage="* Qualification is required" ForeColor="Red" 
                   ControlToValidate="txtQualification" Display="Dynamic"></asp:RequiredFieldValidator>
                   </td>
    </tr>
    <tr>
    <td> 
        <asp:Label ID="lblSecurityQuestion" runat="server" Text="Choose a security question"></asp:Label></td>
    <td>
        <asp:DropDownList ID="ddlSecurityQuestion" runat="server" 
            DataSourceID="SecurityQuestionDatabase" DataTextField="SecurityQuestion" 
            DataValueField="SecurityQuestion">
        </asp:DropDownList> 
        <asp:SqlDataSource ID="SecurityQuestionDatabase" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AccommodationPortalConnectionString %>" 
            SelectCommand="SELECT [SecurityQuestion] FROM [SecurityInfo]">
        </asp:SqlDataSource>
        </td>
        <td> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSecurityQuestion" runat="server" 
                    ErrorMessage="* Please select a security question" ForeColor="Red" 
                   ControlToValidate="ddlSecurityQuestion" Display="Dynamic"></asp:RequiredFieldValidator>
                   </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblSecurityAnswer" runat="server" Text="Security Answer"></asp:Label> </td>
        <td>
            <asp:TextBox ID="txtSecurityAnswer" runat="server" TextMode="Password"></asp:TextBox> </td>
            <td> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSecurityAnswer" runat="server" 
                    ErrorMessage="* Security Answer is required" ForeColor="Red" 
                   ControlToValidate="txtSecurityAnswer" Display="Dynamic"></asp:RequiredFieldValidator>
                   </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            onclick="btnSubmit_Click1" />
        </td>
    </tr>
    </table>
</asp:Content>
