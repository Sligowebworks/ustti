<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courseload_confirm.aspx.cs" Inherits="courseload_confirmation" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_application_level_1" Src="~/controls/nav_application_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Data</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0">
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
				
					<table class="expand"  cellspacing="0">
                        <tr>
                            <td align="center" class="top_bar_left" style="width: 176px" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                            <USTTI:nav_application_level_1 ID="nav_regsitration_level1" runat=server />
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" style="width: 176px">
							    <table width="100">
							    <tr>
							    <td style="width:100px" valign="top">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							    </td></tr></table>
                                
                            </td>
							<td class="content_text" valign=top>
                                <div class="page_title">
                                    Student's Course Load Confirmation</div>
                                <p></p>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5"><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Student's Course Load Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            &nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3></TD></TR></TBODY></TABLE>
                                </div>
                                &nbsp;&nbsp;
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="top">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>
