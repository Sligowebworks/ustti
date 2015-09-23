<%@ Page Language="C#" AutoEventWireup="true" CodeFile="application_search_record.aspx.cs" Inherits="application_search_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_application_level_1" Src="~/controls/nav_application_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student's Application Information</title>
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
                            <td class="top_bar_right">
                            <USTTI:nav_application_level_1 ID="nav_application_level1" runat=server />
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
                                <div class="page_title">
                                    Student's Application Information
                                </div>
                                <div class="search_record">
                                <TABLE class="entry_form_detail" width="90%"><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 26px">
                                    First Name</TD><TD style="HEIGHT: 26px" 
                                colSpan=2><asp:TextBox id="txtFirstName" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" MaxLength="60"></asp:TextBox></TD></TR>
                                    <tr>
                                        <td style="width: 100px; height: 26px">
                                            Last Name</td>
                                        <td colspan="2" style="height: 26px">
                                            <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                MaxLength="60"></asp:TextBox></td>
                                    </tr>
                                    <TR><TD colSpan=3><asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Search"></asp:Button></TD></TR><TR><TD style="HEIGHT: 18px" colSpan=3><asp:Label id="lblMsgResult" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label></TD></TR></TBODY></TABLE>
                                </div>
                                <div class="gridview">
                                    <asp:Label ID="lblMessError" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                                        Font-Size="11px" Text="Label" Visible="False"></asp:Label>
                                <asp:GridView id="dgApplication" runat="server" Font-Size="11px" Font-Names="trebuchet ms" DataSourceID="ApplicationDataSource" DataKeyNames="applicationid" CellPadding="5" BorderStyle="Double" BorderColor="DarkGray" AutoGenerateColumns="False" AllowSorting="True" AllowPaging="True">
                                                <PagerSettings Mode="NumericFirstLast"  />
                                                <Columns>
                                                    <asp:HyperLinkField DataNavigateUrlFields="applicationid" DataNavigateUrlFormatString="application_edit_record.aspx?applicationid={0}"
                                                        NavigateUrl="~/studentadmin/application/application_edit_record.aspx" Text="Edit" />
                                                    <asp:HyperLinkField Text="Course Load" DataNavigateUrlFields="applicationid,firstname,lastname,countryname,studentid"
                                                     DataNavigateUrlFormatString="<%=WebFolder %>studentadmin/courseload/courseload_student_record.aspx?applicationid={0}&amp;firstname={1}&amp;lastname={2}&amp;countryname={3}&amp;studentid={4}" 
                                                     NavigateUrl="<%=WebFolder %>studentadmin/courseload/courseload_student_record.aspx">
                                                     <ItemStyle Wrap="False" />
                                                     </asp:HyperLinkField>
                                                    <asp:HyperLinkField Text="Funding" DataNavigateUrlFields="applicationid,firstname,lastname,countryname,studentid"
                                                    DataNavigateUrlFormatString="<%=WebFolder %>fundadmin/studentfundingsource/funding_add_record.aspx?applicationid={0}&amp;firstname={1}&amp;lastname={2}&amp;countryname={3}&amp;studentid={4}" 
                                                    NavigateUrl="<%=WebFolder %>fundadmin/studentfundingsource/funding_add_record.aspx" />
                                                    <asp:BoundField DataField="name" HeaderText="Student Name"  >
                                                    <ItemStyle Wrap="False" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="countryname" HeaderText="Country" />
                                                    <asp:BoundField DataField="date_from" HeaderText="Orientation Start Date" HtmlEncode=false DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="year" HeaderText="App Year" />
                                                    <asp:BoundField DataField="applicdate" HeaderText="Appl Date" HtmlEncode="False" DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="departus" HeaderText="Depart Date" HtmlEncode="False" DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="arriveus" HeaderText="Arrival Date" HtmlEncode="False" DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="hoteldc" HeaderText="Hotel DC" />
                                                    <asp:BoundField DataField="checkoutdc" HeaderText="Chk Out Date" HtmlEncode="False" DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="needsfunds" HeaderText="Needs Fund" />
                                                </Columns>
                                                <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px"  />
                                                <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px"  />
                                                <AlternatingRowStyle BackColor="#EFEFEF"  />
                                            </asp:GridView>
                                    &nbsp;
                                    <asp:SqlDataSource ID="ApplicationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                        SelectCommand="SELECT r.*,(s.firstname+s.lastname) as name,c.countryname from application r,student s,country c&#13;&#10;WHERE s.studentid=r.studentid AND s.countryid=c.countryid">
                                    </asp:SqlDataSource>
                                    </div>
                               
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
