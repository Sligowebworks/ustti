<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/course/Default.aspx.cs" Inherits="coursebysponsor_default" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course By Sponsor Report</title>
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
                                <div class="page_title">
                                    Course by Sponsor Report Generator
                                    </div>
                                <table id="student_data_entry_form" cellpadding="5" class="data_entry_form">
                                    <tbody>
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top">
                                                Report Parameter</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" valign="middle">
                                                <table id="tblEntryForm1" runat="server" class="entry_form_detail" width="90%">
                                                    <tr>
                                                        <td style="width: 100px; height: 27px">
                                                            Sponsor Name</td>
                                                        <td colspan="2" style="height: 27px">
                                                            &nbsp;<asp:DropDownList ID="SponsorList" runat="server" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" >
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SponsorList"
                                                                Enabled="False" ErrorMessage="required" InitialValue="-Select Sponsor-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px; height: 27px">
                                                            Reporting Method</td>
                                                        <td colspan="2" style="height: 27px">
                                                            <asp:RadioButtonList ID="ReportMethodButton" runat="server" AutoPostBack="True" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" RepeatDirection="Horizontal" OnSelectedIndexChanged="ReportMethodSelection">
                                                                <asp:ListItem>Yearly Report</asp:ListItem>
                                                                <asp:ListItem>All Year Report</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ReportMethodButton"
                                                                Display="Dynamic" Enabled="False" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                    </tr>
                                                </table>
                                                <table id="tblEntryForm3" runat="server" class="entry_form_detail" width="90%">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 100px; height: 27px">
                                                                Training Year</td>
                                                            <td colspan="2" style="height: 27px">
                                                             
                                                                <asp:DropDownList ID="YearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="YearList"
                                                                    Enabled="False" ErrorMessage="required" InitialValue="-Select Year-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                             
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="height: 29px">
                                                <asp:Button ID="btnGenerateReport" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    OnClick="btnGenerateReport_Click" Text="Generate Report" />
                                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                             </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                                <asp:SqlDataSource ID="SponsorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>" SelectCommand="SELECT [sponsid], [sponsname] FROM [sponsors] ORDER BY [sponsname]"></asp:SqlDataSource>
                            </td>
                        </tr>
						
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
