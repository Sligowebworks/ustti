<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/participant/participantbycountry_report.aspx.cs" Inherits="participantbycountry_report" %>

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
		<title>USTTI Participant By Country Report</title>
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
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="participantDataSet_participantlistbycountryandyear1" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="participantDataSet_participantlistbycountryandyear2" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="participantDataSet_participantlistbycountryandyear3" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="participantDataSet_participantlistbycountryandyear4" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="participantDataSet_participantlistbycountryandyear5" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="participantDataSet_participantlistbycountryandyear6" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="participantDataSet_participantlistbycountryandyear7" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="participantDataSet_participantlistbycountryandyear8" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource9" Name="participantDataSet_participantlistbycountryandyear9" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource10" Name="participantDataSet_participantlistbycountryandyear10" />
                                           <rsweb:ReportDataSource DataSourceId="ObjectDataSource11" Name="participantDataSet_tot_participantbycountry" />
                                        </DataSources>
                                    </LocalReport>
                                </rsweb:ReportViewer>
                                <asp:ObjectDataSource ID="ObjectDataSource23" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.total_participantTableAdapter"></asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource22" runat="server" SelectMethod="GetData"
                                    TypeName="country_report_datasetTableAdapters.courseInformationTableAdapterTableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource21" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear10TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource20" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear9TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource19" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear8TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource18" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear7TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear6TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear5TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource15" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear4TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource14" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear3TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource13" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear2TableAdapter">
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycourseandyear1TableAdapter">
                                </asp:ObjectDataSource>
                             <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.tot_participantbycountryTableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear10TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear9TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear8TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear7TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear6TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear5TableAdapter" OldValuesParameterFormatString="original_{0}"> 
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear4TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear3TableAdapter" OldValuesParameterFormatString="original_{0}">
                                     <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32"  />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear2TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData"
                                    TypeName="participantDataSetTableAdapters.participantlistbycountryandyear1TableAdapter" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="countryid" QueryStringField="countryid" Type="Int32" />
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
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
