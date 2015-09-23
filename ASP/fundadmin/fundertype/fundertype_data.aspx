<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fundertype_data.aspx.cs" Inherits="fundertype_data" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_fundertype_level_1" Src="~/controls/nav_fundertype_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_funder_type.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Funder Type Information</title>
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
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    Funder Type Information</div>
                                    <div class="gridview">
                                    <asp:GridView ID="dgFundType" runat="server" AllowPaging="True"
                                        AllowSorting="True" AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double"
                                        CellPadding="5" DataKeyNames="fundertypid" DataSourceID="FunderTypeDataSource" Font-Names="trebuchet ms"
                                        Font-Size="11px">
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                        <Columns>
                                            <asp:HyperLinkField DataNavigateUrlFields="fundertypid" DataNavigateUrlFormatString="fundertype_edit_record.aspx?fundertypid={0}"
                                                NavigateUrl="~/fundadmin/fundertype/fundertype_edit_record.aspx" Text="Edit" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField DataField="fundertypdes" HeaderText="Description" />
                                        
                                            </Columns>
                                    </asp:GridView></div>
                                <asp:SqlDataSource ID="FunderTypeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [fundertype] ORDER BY fundertypid DESC"
                                    DeleteCommand="DELETE fundertype WHERE fundertypid=@fundertypid" ></asp:SqlDataSource>
                              
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height=75px >
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
