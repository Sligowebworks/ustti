<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/reports/trainingfactsheet/trainingfactsheet_report.aspx.cs" Inherits="trainingfactsheet_report" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Training Fact Sheet Report</title>
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
                                
                                <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="#CAD3DC" 
                                    Font-Names="Trebuchet MS" Font-Size="11px" Height="60%" Width="100%" BorderColor="Transparent" InternalBorderColor="Gray">
                                    <LocalReport>
                                        <DataSources>
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1_trainingfactsheetTable1" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1_trainingfactsheetTable2" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1_trainingfactsheetTable3" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet1_trainingfactsheetTable4" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSet1_trainingfactsheetTable5" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="DataSet1_trainingfactsheetTable7" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="DataSet1_trainingfactsheetTable8" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="DataSet1_trainingfactsheetTable9" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource9" Name="DataSet1_trainingfactsheetTable10" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource10" Name="DataSet1_trainingfactsheetTable11" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource11" Name="DataSet1_trainingfactsheetTable12" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource12" Name="DataSet1_trainingfactsheetTable13" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource13" Name="DataSet1_trainingfactsheetTable14" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource14" Name="DataSet1_trainingfactsheetTable15" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource15" Name="DataSet1_trainingfactsheetTable16" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource16" Name="DataSet1_Slot" />
                                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource17" Name="DataSet1_Slot2" />
                                        </DataSources>
                                    </LocalReport>
                                </rsweb:ReportViewer>
                                <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.Slot2TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.SlotTableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource
                                    ID="ObjectDataSource15" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable16TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource14" runat="server"
                                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable15TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource
                                    ID="ObjectDataSource13" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable14TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable13TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                               
                                <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable12TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable11TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable10TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable9TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable8TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable7TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}"
                                 SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable5TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable4TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable3TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable2TableAdapter">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="year" QueryStringField="year" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DataSet1TableAdapters.trainingfactsheetTable1TableAdapter">
                                    <SelectParameters>
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
