<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_add_record.aspx.cs" Inherits="student_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0" cellpadding=0>
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding=0>
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right">
                                &nbsp;
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							    
                                <div class="page_title">
                                    Add New Student</div>
                                <TABLE class="data_entry_form" cellPadding=4><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Student Personal Information</TD></TR><TR><TD vAlign=middle colSpan=3><TABLE id="tblEntryForm" 
class="entry_form_detail2" width="90%" 
runat="server"><TBODY><TR>
                                            <td style="width: 98px" valign="middle">
                                                Honorific <span style="color: #ff0000">*</span></td><TD style="HEIGHT: 27px" 
colSpan=2>
                                                    &nbsp;<asp:DropDownList ID="DropDownListHonorific" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                    <asp:ListItem>-Select Honorific-</asp:ListItem>
                                                <asp:ListItem>Dr</asp:ListItem>
                                                <asp:ListItem>Mr</asp:ListItem>
                                                <asp:ListItem>Mrs</asp:ListItem>
                                                <asp:ListItem>Ms</asp:ListItem>
                                                </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListHonorific"
                                                        Display="Dynamic" ErrorMessage="required" InitialValue="-Select Honorific-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
</tr>
    <TR>
                                            <td style="width: 98px" valign="middle">
                                                First Name <span style="color: #ff0000">*</span></td><TD 
colSpan=2>
                                                <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
    </tr>
    <TR>
                                            <td style="width: 98px; height: 28px;" valign="middle">
                                                Middle Name</td><TD colSpan=2>
                                                <asp:TextBox ID="txtMiddleName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="15"></asp:TextBox></td>
    </tr>
    <TR>
                                            <td style="width: 98px" valign="middle">
                                                Last Name <span style="color: #ff0000">*</span></td><TD 
style="HEIGHT: 26px" colSpan=2>
                                                <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="30"></asp:TextBox><asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
    </tr>
    <TR>
                                            <td style="width: 98px; height: 26px;" valign="middle">
                                                Suffix</td><TD vAlign=top align=left 
colSpan=2>
                                                <asp:TextBox CssClass="font_format" ID="txtSuffix" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="15"></asp:TextBox></td>
    </tr>
    <TR>
                                            <td style="width: 98px; height: 26px;" valign="top">
                                                Date of Birth <span style="color: #ff0000">*</span></td><TD vAlign=top align=left colSpan=2 style="height: 26px">
                                                <USTTI:date_selector ID="dob_selector" runat=server />
                                                </TD></TR><TR>
                                            <td style="width: 98px; height: 18px;" valign="middle">
                                                Gender <span style="color: #ff0000">*</span></td>
                                            <TD vAlign=top align=left colSpan=2>
                                                <asp:DropDownList ID="DropDownListSex" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                <asp:ListItem>-Select Gender-</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList><asp:RequiredFieldValidator ID="SexValidator" runat="server" ControlToValidate="DropDownListSex" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True" InitialValue="-Select Gender-"></asp:RequiredFieldValidator></TD></TR><TR>
                                            <td style="width: 98px" valign="top">
                                                Organization <span style="color: #ff0000">*</span></td>
                                            <TD style="HEIGHT: 22px" 
vAlign=top align=left colSpan=2>
                                                <asp:TextBox ID="txtOrg1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Height="100px" MaxLength="100" TextMode="MultiLine" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="OrgValidator" runat="server" ControlToValidate="txtOrg1"
                                                    Display="Dynamic" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></TD></TR>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Title</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtTitle" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox></td>
    </tr>
    <tr>
                                            <td style="width: 98px; height: 100px;" valign="top">
                                                Address&nbsp; <span style="color: #ff0000">*</span></td>
        <td align="left" colspan="2" style="height: 100px" valign="top">
                                                <asp:TextBox ID="txtAddress1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Height="100px" Width="201px" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="AddressValidator" runat="server" ControlToValidate="txtAddress1" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                City <span style="color: #ff0000">*</span></td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtCity" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Wrap="False" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="CityValidator" runat="server" ControlToValidate="txtCity" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Zip Code <span style="color: #ff0000">*</span></td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtZipCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="5"></asp:TextBox><asp:RequiredFieldValidator ID="ZipCodeValidator" runat="server" ControlToValidate="txtZipCode" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtZipCode" ValidationExpression="\d{5}" runat="server" ErrorMessage="Please enter 5 digits zip code format" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px; height: 19px;" valign="top">
                                                Business Phone <span style="color: #ff0000">*</span></td>
        <td align="left" colspan="2" style="height: 19px" valign="top">
            <table id="busphonenumbernewformat" runat="server">
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtBusCountryCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBusCountryCode"
                            Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBusAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBusAreaCode"
                            Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBusPhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="7"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBusPhoneNumber"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtBusCountryCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Country Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtBusCountryCode"
                            Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtBusAreaCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Area Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtBusAreaCode"
                            Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtBusPhoneNumber"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtBusPhoneNumber"
                            Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </td>
        
    </tr>
    <tr>
                                            <td style="width: 98px; height: 22px;" valign="top">
                                                Home Phone </td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
            <table id="homephonenumbernewformat" runat="server">
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtHomeCountryCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>&nbsp;
                        <asp:TextBox ID="txtHomeAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>&nbsp;
                        <asp:TextBox ID="txtHomePhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="7"></asp:TextBox>&nbsp;
                        <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtHomeCountryCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Country Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtHomeCountryCode"
                            Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtHomeAreaCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Area Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                            ControlToValidate="txtHomeAreaCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtHomePhoneNumber"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                            ControlToValidate="txtHomePhoneNumber" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="top">
                                                Fax </td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
            <table id="faxnumbernewformat" runat="server">
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtFaxCountryCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>&nbsp;
                        <asp:TextBox ID="txtFaxAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="3" Width="30px"></asp:TextBox>&nbsp;
                        <asp:TextBox ID="txtFaxPhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                            MaxLength="7"></asp:TextBox>&nbsp;
                        <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="txtFaxCountryCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Country Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                            ControlToValidate="txtFaxCountryCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator9" runat="server" ControlToValidate="txtFaxAreaCode"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only for Area Code<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                            ControlToValidate="txtFaxAreaCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator10" runat="server" ControlToValidate="txtFaxPhoneNumber"
                            Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px">Please enter number only<br /></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                            ControlToValidate="txtFaxPhoneNumber" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$" Font-Names="Trebuchet MS" Font-Size="11px">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
                                                </td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Cell Phone </td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtCellPhone" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="135px" MaxLength="20"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCellPhone"
                Display="Dynamic" ErrorMessage="Please Enter Number Only" Operator="DataTypeCheck"
                Type="Integer" Font-Names="Trebuchet MS" Font-Size="11px"></asp:CompareValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Business
                                                Email <span style="color: #ff0000">*</span><span style="color: #ff0000"></span></td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtBusEmail" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60" Width="135px"></asp:TextBox><asp:RequiredFieldValidator ID="BusEmailValidator" runat="server" ControlToValidate="txtBusEmail" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtBusEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Personal Email</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtPerEmail" runat="server" Width="135px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtPerEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Name</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtSpvrName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60" Width="135px"></asp:TextBox></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Title</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtSpvrTitle" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60" Width="135px"></asp:TextBox></td>
    </tr>
    <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Email</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtSupvrEmail" runat="server" Width="135px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtSupvrEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 98px" valign="middle">
            Persona Non Grata <span style="color: #ff0000">*</span></td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
            <asp:RadioButtonList ID="PNGRadioButton" runat="server" Font-Names="Trebuchet MS"
                Font-Size="11px" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PNGRadioButton"
                Display="Dynamic" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
                                            <td style="width: 98px; height: 50px;" valign="top">
                                                Memo</td>
        <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:TextBox ID="txtMemo" runat="server" Height="100px" TextMode="MultiLine" Width="200px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="100"></asp:TextBox></td>
    </tr>
</TBODY></TABLE></TD></TR>
                                    <tr>
                                        <td class="entry_form_header" valign="top">
                                            Home Country Information</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <TABLE id="Table1" 
class="entry_form_detail2" width="90%" 
runat="server">
                                                <TBODY>
                                                    <TR>
                                                        <td style="width: 98px; height: 100px;" valign="top">
                                                            Home Address&nbsp; <span style="color: #ff0000">*</span></td>
                                                        <TD 
colSpan=2 style="height: 100px">
                                                <asp:TextBox ID="txtHomeAddress1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Height="100px" Width="200px" MaxLength="100" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="HomeAddressValidator" runat="server" ControlToValidate="txtHomeAddress1" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <TR style="color: #000000">
                                                        <td style="width: 98px" valign="middle">
                                                            Home City <span style="color: #ff0000">*</span></td>
                                                        <TD colSpan=2>
                                                <asp:TextBox ID="txtHomeCity" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="HomeCityValidator" runat="server" ControlToValidate="txtHomeCity" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <TR style="color: #000000">
                                                        <td style="width: 98px" valign="middle">
                                                            Country <span style="color: #ff0000">*</span></td>
                                                        <TD vAlign=top align=left 
colSpan=2>
                                                <asp:DropDownList ID="CountryDropDownList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="150px" >
                                                <asp:ListItem>-Select Country-</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="CountryValidator" runat="server" ControlToValidate="CountryDropDownList" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True" InitialValue="-Select Country-"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <TR>
                                                        <td style="width: 98px" valign="middle">
                                                            Zip Code <span style="color: #ff0000">*</span></td>
                                                        <TD vAlign=top align=left colSpan=2>
                                                <asp:TextBox ID="txtHomeZipCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="5"></asp:TextBox><asp:RequiredFieldValidator ID="HomeZipCodeValidator" runat="server" ControlToValidate="txtHomeZipCode" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please enter 5 digit zip code format" ControlToValidate="txtHomeZipCode" SetFocusOnError="True" ValidationExpression="\d{5}"></asp:RegularExpressionValidator></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="entry_form_header" valign="top">
                                            Passport Information</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <TABLE id="Table2" 
class="entry_form_detail2" width="90%" 
runat="server">
                                                <tr>
                                                    <td style="width: 98px" valign="middle">
                                                        Passport Number <span style="color: #ff0000">*</span></td>
                                                    <TD 
colSpan=2>
                                                <asp:TextBox ID="txtPassportNum" runat="server" MaxLength="20" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox><asp:RequiredFieldValidator ID="PassportNumValidator" runat="server" ControlToValidate="txtPassportNum" ErrorMessage="required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 98px" valign="middle">
                                                        Passport Country <span style="color: #ff0000">*</span></td>
                                                    <TD 
colSpan=2>
                                                <asp:DropDownList ID="PassCountryDataList" runat="server"  Font-Names="Trebuchet MS"
                                                    Font-Size="11px" Width="150px">
                                                    
                                                </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PassCountryDataList"
                                                            Display="Dynamic" ErrorMessage="required" InitialValue="-Select Country-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 98px; height: 18px;" valign="top">
                                                        Expiration Date <span style="color: #ff0000">*</span></td>
                                                    <TD colSpan=2 style="height: 18px">
                                                    <USTTI:date_selector ID="pass_exp_date_selector" runat=server />
                                                </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="entry_form_header" valign="top">
                                            Language Proficiency</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <TABLE id="Table3" 
class="entry_form_detail2" width="90%" 
runat="server">
                                                <tr>
                                                    <td style="width: 98px" valign="middle">Reading Skill
                                                        <span style="color: #ff0000">*</span></td>
                                                    <TD 
colSpan=2 valign="middle">
                                                        <asp:RadioButtonList ID="ReadingSkill" runat="server" RepeatDirection="Horizontal" Font-Names="Trebuchet MS" Font-Size="11px">
                                                            <asp:ListItem>Excellent</asp:ListItem>
                                                            <asp:ListItem>Adequate</asp:ListItem>
                                                            <asp:ListItem>Poor</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required"
                                                            SetFocusOnError="True" ControlToValidate="ReadingSkill" Display="Dynamic" Font-Names="Trebuchet MS" Font-Size="11px"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 98px" valign="middle">
                                                        Writing Skill <span style="color: #ff0000">*</span></td>
                                                    <td colspan="2" valign="middle"><asp:RadioButtonList ID="WritingSkill" runat="server" RepeatDirection="Horizontal" Font-Names="Trebuchet MS" Font-Size="11px">
                                                        <asp:ListItem>Excellent</asp:ListItem>
                                                        <asp:ListItem>Adequate</asp:ListItem>
                                                        <asp:ListItem>Poor</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="required"
                                                            SetFocusOnError="True" ControlToValidate="WritingSkill" Display="Dynamic" Font-Names="Trebuchet MS" Font-Size="11px"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 98px" valign="middle">
                                                        Speaking Skill <span style="color: #ff0000">*</span></td>
                                                    <td colspan="2" valign="middle"><asp:RadioButtonList ID="SpeakingSkill" runat="server" RepeatDirection="Horizontal" Font-Names="Trebuchet MS" Font-Size="11px">
                                                        <asp:ListItem>Excellent</asp:ListItem>
                                                        <asp:ListItem>Adequate</asp:ListItem>
                                                        <asp:ListItem>Poor</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="required"
                                                            SetFocusOnError="True" ControlToValidate="SpeakingSkill" Display="Dynamic" Font-Names="Trebuchet MS" Font-Size="11px"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 98px" valign="middle">
                                                        Comprehension <span style="color: #ff0000">*</span></td>
                                                    <td colspan="2" valign="middle"><asp:RadioButtonList ID="Comprehension" runat="server" RepeatDirection="Horizontal" Font-Names="Trebuchet MS" Font-Size="11px">
                                                        <asp:ListItem>Excellent</asp:ListItem>
                                                        <asp:ListItem>Adequate</asp:ListItem>
                                                        <asp:ListItem>Poor</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Comprehension"
                                                            ErrorMessage="required" SetFocusOnError="True" Display="Dynamic" Font-Names="Trebuchet MS" Font-Size="11px"></asp:RequiredFieldValidator></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <TR><TD vAlign=top>
                                       <table>
                                            <tr>
                                                <td style="width: 53px">
                                                    <asp:Button id="Button1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnSaveBackLater_Click" Text="Save & Back Later" Width="100px"/></td>
                                                <td>
                                                    <asp:Button id="btnContinue" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnContinue_Click" Text="Continue" Width="100px"/></td>
                                            </tr>
                                        </table>
                                    </TD></TR>
                                </TBODY></TABLE>
                               
                                <asp:SqlDataSource ID="CountryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [countryname], [countryid] FROM [country]"></asp:SqlDataSource>
                            &nbsp&nbsp        
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
