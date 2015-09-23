<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sponsor_search_record.aspx.cs" Inherits="sponsor_search_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_sponsor_level_1" Src="~/controls/nav_sponsor_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Sponsor Information</title>
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
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;</td>
                            <td class="top_bar_right">
                            
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" width="176">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top style="height: 480px">
							  
                            <div class="page_title">
                                    Search
                                    Sponsor Information</div>
                                 <div class="search_record">   
                                <TABLE class="entry_form_detail" width="90%"><TBODY><TR><TD style="WIDTH: 100px">
                                    Sponsor Name</TD><TD colSpan=2><asp:TextBox id="txtSponsorName" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" MaxLength="60" Width="200px"></asp:TextBox></TD></TR><TR><TD colSpan=3>
                                <asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Search"></asp:Button></TD></TR><TR><TD style="HEIGHT: 18px" colSpan=3><asp:Label id="lblMsgResult" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label></TD></TR></TBODY></TABLE>
                                </div>
                                <div class="gridview">
                                <asp:Label ID="lblMessError" Visible=false Font-Bold=true runat="server" Text="Label"></asp:Label>
                                <asp:GridView ID="dgSponsor" runat="server" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="PageIndexChanging"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataSourceID="SponsorDataSource" Font-Names="trebuchet ms" Font-Size="11px" DataKeyNames="sponsid"
                                        OnRowDeleted="DeleteRow" >
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <Columns>
                                            <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="sponsid,sponsname" DataNavigateUrlFormatString="sponsor_edit_record.aspx?SponsorID={0}&amp;sponsname={1}" NavigateUrl="~/course/sponsor/sponsor_edit_record.aspx" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:HyperLinkField DataNavigateUrlFields="sponsid,sponsname" DataNavigateUrlFormatString="sponsor_course.aspx?sponsorid={0}&amp;sponsorname={1}"
                                                NavigateUrl="~/course/sponsor/sponsor_course.aspx" Text="Courses" >
                                                <ItemStyle Wrap="False" />
                                            </asp:HyperLinkField>
                                            <asp:BoundField DataField="sponsname" HeaderText="Name"  />
                                            <asp:BoundField DataField="sponsabbr" HeaderText="Abbr" />
                                            <asp:BoundField DataField="contact" HeaderText="Contact" />
                                            <asp:BoundField DataField="address1" HeaderText="Address" />
                                            <asp:BoundField DataField="city" HeaderText="City" />
                                            <asp:BoundField DataField="state" HeaderText="State"  />
                                            <asp:BoundField DataField="phone1" HeaderText="Phone 1"/>
                                            <asp:BoundField DataField="phone2" HeaderText="Phone 2" />
                                            <asp:BoundField DataField="fax" HeaderText="Fax" />
                                            <asp:BoundField DataField="email" HeaderText="Email" />
                                        </Columns>
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SponsorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    
                                    DeleteCommand="DELETE sponsors WHERE sponsid=@sponsid" ></asp:SqlDataSource>
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
