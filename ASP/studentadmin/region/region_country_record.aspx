<%@ Page Language="C#" AutoEventWireup="true" CodeFile="region_country_record.aspx.cs" Inherits="region_country_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_region_level1" Src="~/controls/nav_region_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_region.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Region Data</title>
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
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" >
                            
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top style="height: 1502px">
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    Region Country Information</div>
                                <div class="gridview">
                                    
                                                                <asp:Label ID="lblNullMessage" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                    Text="No Country Listed in This Region" Visible="False" Font-Bold="True"></asp:Label>
                                                                    <asp:GridView ID="dgCountry" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                                    BorderColor="DarkGray" BorderStyle="Double" CellPadding="5" DataSourceID="CountryDataSource"
                                                                    Font-Names="trebuchet ms"  DataKeyNames="countryid" Font-Size="11px" PageSize="20" >
                                                                    <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px"/>
                                                                    <FooterStyle Font-Names="trebuchet-ms" />
                                                                    <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                                    <Columns>
                                                                        <asp:BoundField DataField="countryname" HeaderText="Country Name" />
                                                                        <asp:BoundField DataField="printablename" HeaderText="Printable Name" />
                                                                        <asp:BoundField DataField="mailcode" HeaderText="Mail Code" />
                                                                        <asp:BoundField DataField="independent" HeaderText="Independent" />
                                                                        <asp:BoundField DataField="trainingel" HeaderText="Training Eligibility" />
                                                                        <asp:BoundField DataField="aid_eligib" HeaderText="Aid Eligibility" />
                                                                    </Columns>
                                                                    <AlternatingRowStyle BackColor="#EFEFEF" />
                                                                </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="CountryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                     DeleteCommand="UPDATE country SET regionid='' WHERE countryid=@countryid"></asp:SqlDataSource>
                                &nbsp;
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>
