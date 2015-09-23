<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sponsor_course.aspx.cs" Inherits="course_sponsor_sponsor_data" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_sponsor_level_1" Src="~/controls/nav_sponsor_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Sponsor' course Information</title>
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
                            <td class="top_bar_right" >
                           
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top style="height: 480px">								  
                                <div class="page_title">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                <div class="gridview">
                                <asp:GridView ID="dgSponsorCourse" runat="server" AllowPaging="True"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataSourceID="SponsorCourseDataSource" Font-Names="trebuchet ms" Font-Size="11px" DataKeyNames="sponcrseid,courseid">
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <Columns>
                                            <asp:BoundField DataField="crsetitle1" HeaderText="Title"/>
                                            <asp:BoundField DataField="location" HeaderText="Location"  />
                                            <asp:BoundField DataField="coordinator" HeaderText="Coordinator" />
                                            <asp:BoundField DataField="trainfrom" HeaderText="Begin Date" HtmlEncode=False DataFormatString="{0:d}" />
                                            <asp:BoundField DataField="trainto" HeaderText="End Date"  HtmlEncode=False DataFormatString="{0:d}" />
                                            <asp:BoundField DataField="slots" HeaderText="Slot" />
                                            <asp:BoundField DataField="sponsname" HeaderText="Primary Sponsor" />
                                            <asp:BoundField DataField="courseyear" HeaderText="Year" />
                                        </Columns>
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                    </asp:GridView>
                                    
                               
                                </div>
                                <asp:SqlDataSource ID="SponsorCourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"></asp:SqlDataSource>
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height="75px" >
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
