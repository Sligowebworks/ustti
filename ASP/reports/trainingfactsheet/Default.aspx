<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/trainingfactsheet/Default.aspx.cs" Inherits="training_report_default" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Training Fact Sheet Report</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />
	</HEAD>
	
	    <body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0" cellpadding="0">
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" >
                                <USTTI:nav_miscellaneous_level_1 ID="nav_miscellaneous_level1" runat=server /></td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							    
                                <div class="page_title">Training Year Fact Sheet Report Generator
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
                                                                Training Year</td>
                                                            <td colspan="2">
                                                              <asp:DropDownList ID="YearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" >
                                                             </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YearList"
                                                                ErrorMessage="required" InitialValue="-Select Year-" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="height: 29px">
                                                    <asp:Button ID="btnGenerateReport" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                        OnClick="btnGenerateReport_Click" Text="Generate Report" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height="75px">
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
