<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sponsor_edit_record.aspx.cs" Inherits="sponsor_edit_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_sponsor_level_1" Src="~/controls/nav_sponsor_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Sponsor Information</title>
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
                           
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							  
                                <div class="page_title">
                                    Edit Sponsor
                                </div>
                                   <table  class="data_entry_form">
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top">
                                                Sponsor Data</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 26px;" valign="middle">
                                                Sponsor Name<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 26px" valign="top">
                                                <asp:TextBox ID="txtSponsorName" runat="server" Width="134px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtSponsorName">Required</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="middle">
                                                Abbreviation</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtAbbr" runat="server" Width="60px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="12"></asp:TextBox></td>
                                        </tr>
                                        <tr style="color: #000000">
                                            <td style="width: 98px; height: 28px" valign="middle">
                                                Contact Person<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 28px" valign="top">
                                                <asp:TextBox ID="txtContactPerson" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="134px" MaxLength="60"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtContactPerson">Required</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td  valign="top" style="height: 72px">
                                                Address<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" valign="top" style="height: 72px">
                                                <asp:TextBox ID="txtAddress" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Height="97px" TextMode="MultiLine" Width="200px" MaxLength="100"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtAddress">Required</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr style="color: #000000">
                                            <td style="width: 98px; height: 24px" valign="middle">
                                                City<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 24px" valign="top">
                                                <asp:TextBox ID="txtCity" runat="server" CssClass="font_format" Font-Names="Trebuchet MS"
                                                    Font-Size="11px" MaxLength="60"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtCity">Required</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 26px" valign="middle">
                                                State<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 26px" valign="top">
                                                <asp:TextBox ID="txtState" runat="server" Width="134px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtCity">Required</asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 18px" valign="top">
                                                Phone Number 1<span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 18px" valign="top">
                                                <asp:TextBox ID="txtPhoneNbr1" runat="server" Width="134px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic"
                                                    ErrorMessage="Required" ControlToValidate="txtPhoneNbr1">Required</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter proper phone number format ex:201-5556655" ControlToValidate="txtPhoneNbr1" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr style="color: #000000">
                                            <td style="width: 98px" valign="top">
                                                Phone Number 2</td>
                                            <td colspan="2" style="color: #000000" valign="top">
                                                <asp:TextBox ID="txtPhoneNbr2" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter proper phone number format ex:201-5556655" ControlToValidate="txtPhoneNbr2" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr style="color: #000000">
                                            <td style="width: 98px; height: 17px" valign="top">
                                                Fax</td>
                                            <td colspan="2" style="height: 17px" valign="top">
                                                <asp:TextBox ID="txtFax" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter proper phone number format ex:201-5556655" ControlToValidate="txtFax" Display="Dynamic" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 33px;" valign="top">
                                                Email</td>
                                            <td colspan="2" style="height: 33px" valign="top">
                                                <asp:TextBox ID="txtEmail" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="60"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter proper email address (ex:joe@ustti.edu)" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px" valign="top">
                                                Comment</td>
                                            <td colspan="2" valign="top">
                                                <asp:TextBox ID="txtComment" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    Height="97px" TextMode="MultiLine" Width="200px" MaxLength="100"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" valign="middle">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="height: 29px">
                                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Save" Font-Names="Trebuchet MS" Font-Size="11px" /></td>
                                        </tr>
                                    </table>
                                    &nbsp;&nbsp;
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
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