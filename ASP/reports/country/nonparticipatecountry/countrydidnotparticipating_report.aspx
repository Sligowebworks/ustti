<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/country/nonparticipatecountry/countrydidnotparticipating_report.aspx.cs" Inherits="countrydidnotparticipating_report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course By Sponsor All Year Report</title>
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
							<td class="nav_right">
							<USTTI:nav_level_0 ID="nav_level_0" runat=server />
							   
                                
                            </td>
                            <td class="content_text" colspan="2" valign="top">
                                
                                <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="#CAD3DC" 
                                    Font-Names="Trebuchet MS" Font-Size="11px" Height="60%" Width="100%" BorderColor="Transparent" InternalBorderColor="Gray">
                                  <LocalReport>
                                        <DataSources>
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="country_report_dataset_countrydidnotapplyDataTable1" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="country_report_dataset_countrydidnotapplyDataTable2" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="country_report_dataset_countrydidnotapplyDataTable3" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="country_report_dataset_countrydidnotapplyDataTable4" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="country_report_dataset_countrydidnotapplyDataTable5" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="country_report_dataset_TotalCountryNotApply" />
                                        </DataSources>
                                    </LocalReport>
                                </rsweb:ReportViewer>
                               <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="country_report_datasetTableAdapters.TotalCountryNotApplyTableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                        <asp:QueryStringParameter Name="startyear" QueryStringField="startyear" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                             
                             <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.countrydidnotapplyDataTable5TableAdapter" OldValuesParameterFormatString="original_{0}">
                                 <SelectParameters>
                                     <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                     <asp:QueryStringParameter DefaultValue="" Name="startyear" QueryStringField="startyear"
                                         Type="String" />
                                 </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.countrydidnotapplyDataTable4TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                        <asp:QueryStringParameter Name="startyear" QueryStringField="startyear" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.countrydidnotapplyDataTable3TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                        <asp:QueryStringParameter Name="startyear" QueryStringField="startyear" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.countrydidnotapplyDataTable2TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                        <asp:Parameter DefaultValue="startyear" Name="startyear" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.countrydidnotapplyDataTable1TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="endyear" QueryStringField="endyear" Type="String" />
                                        <asp:QueryStringParameter DefaultValue="" Name="startyear" QueryStringField="startyear"
                                            Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                
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
