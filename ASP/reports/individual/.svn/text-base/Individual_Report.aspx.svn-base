<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individual_Report.aspx.cs" Inherits="reports_individual_Individual_Report" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Individual Bio Fact Sheet</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />

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
							<td class="nav_right">
							<USTTI:nav_level_0 ID="nav_level_0" runat=server />							                                  
                            </td>
                            
                            <td class="content_text" colspan="2" valign="top">
                            
                                <rsweb:ReportViewer ID="IndividualReport" runat="server" BackColor="#CAD3DC" 
                                    Font-Names="Trebuchet MS" Font-Size="11px" Height="60%" Width="100%" BorderColor="Transparent" InternalBorderColor="Gray">
                                    <LocalReport>
                                        <DataSources>
                                            <rsweb:ReportDataSource DataSourceId="ustti_ods1" Name="individualbiodataset_studentPersonalandApplicationInfoDataAdapter" />
                                            <rsweb:ReportDataSource DataSourceId="ustti_ods2" Name="individualbiodataset_studentCourseLoadInfoDataAdapter" />
                                            <rsweb:ReportDataSource DataSourceId="ustti_ods3" Name="individualbiodataset_studentFundingInfoDataAdapter" />
                                        </DataSources>
                                    </LocalReport>
                                </rsweb:ReportViewer>
                                
                                <!-- Data Sources -->
                                
                                <asp:ObjectDataSource ID="ustti_ods1" runat="server" SelectMethod="GetData" TypeName="individualbiodatasetTableAdapters.studentPersonalandApplicationInfoDataAdapterTableAdapter"></asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ustti_ods2" runat="server" SelectMethod="GetData" TypeName="individualbiodatasetTableAdapters.studentCourseLoadInfoDataAdapterTableAdapter"></asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ustti_ods3" runat="server" SelectMethod="GetData" TypeName="individualbiodatasetTableAdapters.studentFundingInfoDataAdapterTableAdapter"></asp:ObjectDataSource>
                                
                                <!-- End Data Sources -->
                            
                            </td>
						</tr>
                        <tr>
                            <td bgcolor="#EFEFEF"  style="border-right:1px solid #808080" >&nbsp;
                            </td>
                            <td class="content_text" colspan="2" height="75px" valign="bottom">
                                <USTTI:footer_level_0 ID="nave_footer_level0" runat=server /></td>
                        </tr>
                        
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
                            
