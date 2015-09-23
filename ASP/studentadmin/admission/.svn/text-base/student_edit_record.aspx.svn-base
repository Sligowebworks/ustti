<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_edit_record.aspx.cs" Inherits="student_edit_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_student.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />

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
                            <td class="top_bar_right" >
                                
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>	
							    <USTTI:menu ID="menu" runat="server" />						
                                <div class="page_title">Edit Student Personal Information</div>
                                
                                <div>
                                    <table class="data_entry_form">
                                        <tr>
                                            <td class="entry_form_header" valign="top" colspan="3">
                                                Student Personal Information</td>
                                        </tr>
                                        
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Honorific</td>
                                            <td colspan="2" valign="top">
                                                <asp:DropDownList ID="DropDownListHonorific" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False">
                                                <asp:ListItem>-Select Honorific-</asp:ListItem>
                                                <asp:ListItem>Dr</asp:ListItem>
                                                <asp:ListItem>Mr</asp:ListItem>
                                                <asp:ListItem>Mrs</asp:ListItem>
                                                <asp:ListItem>Ms</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListHonorific"
                                                    Display="Dynamic" ErrorMessage="equired" InitialValue="-Select Honorific-"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                First Name *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">
                                                Middle Name</td>
                                            <td colspan="2" style="height: 28px" valign="top">
                                                <asp:TextBox ID="txtMiddleName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="15"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Last Name *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="30"></asp:TextBox><asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 26px;" valign="middle">
                                                Suffix</td>
                                            <td colspan="2" style="height: 26px" valign="top">
                                                <asp:TextBox CssClass="font_format" ID="txtSuffix" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="15"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 26px;" valign="top">
                                                Date of Birth *</td>
                                            <td style="height: 26px;" valign="top" colspan="2">
                                            <USTTI:date_selector ID="dob_selector" runat=server />
                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 18px;" valign="middle">
                                                Gender*</td>
                                            <td style="height: 18px;" valign="top" colspan="2">
                                                <asp:DropDownList ID="DropDownListSex" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                <asp:ListItem>-Gender-</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList><asp:RequiredFieldValidator ID="SexValidator" runat="server" ControlToValidate="DropDownListSex" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True" InitialValue="-Gender-"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Organization *</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtOrg1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" Height="100px" MaxLength="100" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="OrgValidator" runat="server" ControlToValidate="txtOrg1"
                                                    Display="Dynamic" ErrorMessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Title</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtTitle" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Address&nbsp; *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtAddress1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" Height="100px" MaxLength="100" TextMode="MultiLine" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="AddressValidator" runat="server" ControlToValidate="txtAddress1" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                City *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtCity" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Wrap="False" Font-Strikeout="False" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="CityValidator" runat="server" ControlToValidate="txtCity" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Zip Code *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtZipCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="5"></asp:TextBox><asp:RequiredFieldValidator ID="ZipCodeValidator" runat="server" ControlToValidate="txtZipCode" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtZipCode" ValidationExpression="\d{5}" runat="server" ErrorMessage="Please enter 5 digits zip code format" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 44px;" valign="top">
                                                Business Phone *</td>
                                            <td  valign="top" colspan="2">
                                                
                                                <table id=busphonenumbernewformat runat=server>
                                                    <tr>
                                                        <td colspan="3" >
                                                                <asp:TextBox ID="txtBusCountryCode" runat="server" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" MaxLength="3" Width="30px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBusCountryCode"
                                                                Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtBusAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                MaxLength="3" Width="30px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBusAreaCode"
                                                                Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtBusPhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                MaxLength="7"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBusPhoneNumber"
                                                                Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtBusCountryCode"
                                                                Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Country Code<br /></asp:CompareValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtBusCountryCode"
                                                                Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                                                            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtBusAreaCode"
                                                                Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Area Code<br /></asp:CompareValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtBusAreaCode"
                                                                Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                                                            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtBusPhoneNumber"
                                                                Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only<br /></asp:CompareValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtBusPhoneNumber"
                                                                Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                                                            
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table id=busphonenumberoldformat runat=server>
                                                        <tr>
                                                            <td colspan="3" >
                                                                <asp:TextBox ID="txtBusPhoneNumberOld" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>&nbsp
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Home Phone </td>
                                            <td valign="top" colspan="2">
                                            <table id=homephonenumbernewformat runat=server>
                                                    <tr>
                                                        <td colspan="3" >
                                                <asp:TextBox ID="txtHomeCountryCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="3" Width="30px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtBusCountryCode"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtHomeAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="3" Width="30px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtBusAreaCode"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtHomePhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="7"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtHomePhoneNumber"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtHomeCountryCode"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Country Code<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtHomeCountryCode"
                                                    Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                                                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtHomeAreaCode"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Area Code<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                                    ControlToValidate="txtHomeAreaCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                                                <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtHomePhoneNumber"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                                    ControlToValidate="txtHomePhoneNumber" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                                                     </td>
                                                    </tr>
                                                </table>
                                                 <table id=homephonenumberoldformat runat=server>
                                                        <tr>
                                                            <td colspan="3" >
                                                                <asp:TextBox ID="txthomephonenumberoldformat" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>&nbsp
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Fax </td>
                                            <td valign="top" colspan="2">
                                            <table id=faxnumbernewformat runat=server>
                                                    <tr>
                                                        <td colspan="3" >
                                                <asp:TextBox ID="txtFaxCountryCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="3" Width="30px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBusCountryCode"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtFaxAreaCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="3" Width="30px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBusAreaCode"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtFaxPhoneNumber" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    MaxLength="7"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtFaxPhoneNumber"
                                                    Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="txtFaxCountryCode"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Country Code<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                                    ControlToValidate="txtFaxCountryCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits Country Code<br /></asp:RegularExpressionValidator>
                                                <asp:CompareValidator ID="CompareValidator9" runat="server" ControlToValidate="txtFaxAreaCode"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only for Area Code<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                                    ControlToValidate="txtFaxAreaCode" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{3}$">Please enter 3 digits area code<br /></asp:RegularExpressionValidator>
                                                <asp:CompareValidator ID="CompareValidator10" runat="server" ControlToValidate="txtFaxPhoneNumber"
                                                    Display="Dynamic" ErrorMessage="" Operator="DataTypeCheck" Type="Integer">Please enter number only<br /></asp:CompareValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                                    ControlToValidate="txtFaxPhoneNumber" Display="dynamic" ErrorMessage="" ValidationExpression="^[0-9]{7}$">Please enter 7 digits phone number</asp:RegularExpressionValidator>
                                                     </td>
                                                    </tr>
                                                </table>
                                                 <table id=faxnumberoldformat runat=server>
                                                        <tr>
                                                            <td colspan="3" >
                                                                <asp:TextBox ID="txtfaxnumberoldformat" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>&nbsp
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 26px;" valign="top">
                                                Cell Phone </td>
                                            <td colspan="2" style="height: 26px" valign="top">
                                                <asp:TextBox ID="txtCellPhone" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="134px" Font-Strikeout="False"></asp:TextBox>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCellPhone"
                                                    ErrorMessage="Please Enter Number Only" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Business
                                                Email *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtBusEmail" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60" Width="135px"></asp:TextBox><asp:RequiredFieldValidator ID="BusEmailValidator" runat="server" ControlToValidate="txtBusEmail" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtBusEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Personal Email</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtPerEmail" runat="server" Width="135px" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtPerEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Name</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtSpvrName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Title</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtSpvrTitle" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Supervisor Email</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtSupvrEmail" runat="server" Width="135px" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtSupvrEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Persona Non Grata *</td>
                                            <td align="left" colspan="2" style="height: 22px" valign="top">
                                                <asp:RadioButtonList ID="PNGRadioButton" runat="server" Font-Names="Trebuchet MS"
                                                    Font-Size="11px" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PNGRadioButton"
                                                    Display="Dynamic" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 50px;" valign="top">
                                                Memo</td>
                                            <td colspan="2" style="height: 50px" valign="top">
                                                <asp:TextBox ID="txtMemo" runat="server" Height="109px" TextMode="MultiLine" Width="234px" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="100"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" valign="top">&nbsp
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="entry_form_header" valign="top" colspan="3">
                                                <p>Home Country Information</p></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Home Address&nbsp; *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtHomeAddress1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" Height="100px" MaxLength="100" TextMode="MultiLine" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="HomeAddressValidator" runat="server" ControlToValidate="txtHomeAddress1" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Home City *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtHomeCity" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="HomeCityValidator" runat="server" ControlToValidate="txtHomeCity" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Country *</td>
                                            <td valign="top" colspan="2">
                                                <asp:DropDownList ID="CountryDropDownList" runat="server" DataSourceID="CountryDataSource"
                                                 DataTextField="countryname" DataValueField="countryid" Font-Names="Trebuchet MS" Font-Size="9pt" Width="150px" >
                                                </asp:DropDownList><asp:RequiredFieldValidator ID="CountryValidator" runat="server" ControlToValidate="CountryDropDownList" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 25px;" valign="middle">
                                                Zip Code *</td>
                                            <td valign="top" colspan="2" style="height: 25px">
                                                <asp:TextBox ID="txtHomeZipCode" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="5"></asp:TextBox><asp:RequiredFieldValidator ID="HomeZipCodeValidator" runat="server" ControlToValidate="txtHomeZipCode" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please enter 5 digit zip code format" ControlToValidate="txtHomeZipCode" SetFocusOnError="True" ValidationExpression="\d{5}"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td valign="middle" colspan="3">
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="middle">
                                                <p>Passport Information</p></td>
                                            
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Passport Number *</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="txtPassportNum" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Font-Strikeout="False" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="PassportNumValidator" runat="server" ControlToValidate="txtPassportNum" ErrorMessage="required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Passport Country *</td>
                                            <td colspan="2" valign="top">
                                                <asp:DropDownList ID="PassCountryDataList" runat="server" DataSourceID="CountryDataSource"
                                                    DataTextField="countryname" DataValueField="countryid" Font-Names="Trebuchet MS"
                                                    Font-Size="11px" Width="150px" Font-Strikeout="False">
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Expiration Date *</td>
                                            <td valign="top" colspan="2">
                                            <USTTI:date_selector ID="pass_exp_date_selector" runat=server />
                                                </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle" colspan="3">&nbsp
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="middle">
                                                <p>Language Proficiency Information</p></td>
                                            
                                        </tr>
                                        <tr>
                                            <td valign="middle" colspan="3">
                                                <table id="Table3" runat="server" class="entry_form_detail2" width="90%">
                                                    <tr>
                                                        <td style="width: 98px" valign="middle">
                                                            Reading Skill <span style="color: #ff0000">*</span></td>
                                                        <td colspan="2" valign="middle">
                                                            <asp:RadioButtonList ID="ReadingSkill" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem>Excellent</asp:ListItem>
                                                                <asp:ListItem>Adequate</asp:ListItem>
                                                                <asp:ListItem>Poor</asp:ListItem>
                                                            </asp:RadioButtonList><span style="color: #ff0000"> </span>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ReadingSkill"
                                                                Display="Dynamic" ErrorMessage="required" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr >
                                                        <td style="width: 98px" valign="middle">
                                                            Writing Skill <span style="color: #ff0000">*</span></td>
                                                        <td colspan="2" valign="middle">
                                                            <asp:RadioButtonList ID="WritingSkill" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem>Excellent</asp:ListItem>
                                                                <asp:ListItem>Adequate</asp:ListItem>
                                                                <asp:ListItem>Poor</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="WritingSkill"
                                                                Display="Dynamic" ErrorMessage="required" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 98px" valign="middle">
                                                            Speaking Skill <span style="color: #ff0000">*</span></td>
                                                        <td colspan="2" valign="middle">
                                                            <asp:RadioButtonList ID="SpeakingSkill" runat="server" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" RepeatDirection="Horizontal">
                                                                <asp:ListItem>Excellent</asp:ListItem>
                                                                <asp:ListItem>Adequate</asp:ListItem>
                                                                <asp:ListItem>Poor</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="SpeakingSkill"
                                                                Display="Dynamic" ErrorMessage="required" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr >
                                                        <td style="width: 98px" valign="middle">
                                                            Comprehension <span style="color: #ff0000">*</span></td>
                                                        <td colspan="2" valign="middle">
                                                            <asp:RadioButtonList ID="Comprehension" runat="server" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" RepeatDirection="Horizontal">
                                                                <asp:ListItem>Excellent</asp:ListItem>
                                                                <asp:ListItem>Adequate</asp:ListItem>
                                                                <asp:ListItem>Poor</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Comprehension"
                                                                Display="Dynamic" ErrorMessage="required" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td style="height: 29px;" colspan="3">
                                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Save" Font-Names="Trebuchet MS" Font-Size="11px" /></td>
                                        </tr>
                                    </table>
                                </div>
                                <asp:SqlDataSource ID="CountryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [countryname], [countryid] FROM [country]"></asp:SqlDataSource>
                                &nbsp&nbsp    
                            </td>
						</tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
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
