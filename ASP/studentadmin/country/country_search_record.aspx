<%@ Page Language="C#" AutoEventWireup="true" CodeFile="country_search_record.aspx.cs" Inherits="country_search_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_country_level_1" Src="~/controls/nav_country_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_countries.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Country Information</title>
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
							<td class="nav_right"  >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    Search
                                    Country Information</div>
                                <div class="search_record">
                                <TABLE class="entry_form_detail" width="90%"><TBODY><TR><TD style="WIDTH: 100px">
                                    Country &nbsp;Name</TD><TD colSpan=2>
                                <asp:TextBox id="txtCountryName" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" MaxLength="60" Width="200px"></asp:TextBox></TD></TR><TR><TD colSpan=3>
                                <asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Search"></asp:Button></TD></TR><TR><TD style="HEIGHT: 18px" colSpan=3><asp:Label id="lblMsgResult" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label></TD></TR></TBODY></TABLE>
                                </div>
                                <div class="gridview">
                                    
                                <asp:Label ID="lblMessError" Visible=false Font-Bold=true runat="server" Text="Label"></asp:Label>
                                    <asp:GridView id="dgCountry" runat="server" Font-Names="trebuchet ms" Font-Size="11px" BorderStyle="Double" BorderColor="DarkGray" 
                                    DataSourceID="CountryDataSource"  DataKeyNames="countryid" CellPadding="5" PageSize="15" AllowPaging="True" AutoGenerateColumns="False"
                                     OnRowDeleted="DeleteRow" Visible=false   >
                                     <PagerStyle BackColor="#CAD3DC" Font-Size="11px" Font-Names="trebuchet ms"></PagerStyle>
                                     <FooterStyle Font-Names="trebuchet-ms"  />
                                     <HeaderStyle BackColor="#CAD3DC" Font-Size="12px" Font-Names="trebuchet ms" Font-Bold="True"></HeaderStyle>
                                    <Columns>
                                        <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="countryid" DataNavigateUrlFormatString="country_edit_record.aspx?countryid={0}" NavigateUrl="~/studentadmin/country/country_edit_record.aspx" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField HeaderText="Country Name" DataField="countryname" />
                                        <asp:BoundField HeaderText="Printable Name" DataField="printablename" />
                                        <asp:BoundField HeaderText="Mail Code" DataField="mailcode" />
                                        <asp:BoundField HeaderText="Independent" DataField="independent" />
                                        <asp:BoundField HeaderText="Training Eligibility" DataField="trainingel" />
                                        <asp:BoundField HeaderText="Aid Eligibility" DataField="aid_eligib" />
                                        <asp:BoundField HeaderText="Region" DataField="regionname" />
                                      </Columns>
                                    <AlternatingRowStyle BackColor="#EFEFEF"></AlternatingRowStyle>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="CountryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                        
                                        DeleteCommand="DELETE country WHERE countryid=@countryid" ></asp:SqlDataSource>
                                    
                               
                                </div>
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="top" bgcolor="#EFEFEF" style="border-right:1px solid #808080"> &nbsp;</td>
                            <td height="75" valign="top"><USTTI:footer_level_0 id="footer_level_0_1" runat="server"></USTTI:footer_level_0>
                                </td>
                        </tr>
						
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
