<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/country/participatecountry/Default.aspx.cs" Inherits="participatecountry_report_default" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Country Report</title>
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
                            <td align="center" class="top_bar_left" style="width: 176px" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                            <USTTI:nav_miscellaneous_level_1 ID="nav_miscellaneous_level1" runat=server /> 
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
						    </td>
							<td class="content_text" valign=top>							    
                                <div class="page_title">Country Report Generator
                                    </div>
                                
                                    <table id="student_data_entry_form" cellpadding="5" class="data_entry_form">
                                        <tbody>
                                            <tr>
                                                <td class="entry_form_header" colspan="3" style="height: 29px" valign="top">
                                                    Report Parameter&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" valign="middle">
                                    <table class="entry_form_detail" style="width: 361px">
                                        <tr>
                                            <td style="width: 74px">
                                                Start Year</td>
                                            <td colspan="2"><asp:DropDownList ID="StartYearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                            </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="StartYearList"
                                                    ErrorMessage="required" InitialValue="-Select Start Year-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 74px">
                                                End Year</td>
                                            <td colspan="2">
                                                <asp:DropDownList ID="EndYearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" >
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EndYearList"
                                                    ErrorMessage="required" InitialValue="-Select End Year-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="height: 29px">
                                                    <asp:Button ID="Button1" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                        OnClick="btnGenerateReport_Click" Text="Generate Report" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                
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
