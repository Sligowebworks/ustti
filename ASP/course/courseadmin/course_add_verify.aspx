<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_add_verify.aspx.cs" Inherits="course_courseadmin_course_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course Verify</title>
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
                            <td class="top_bar_right" valign="top" style="height: 11px"></td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" width="176">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
                                <div class="page_title">Course Verification</div>
                                <div class="gridview">
                                <p><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                                    <asp:GridView ID="dgCourse" runat="server" AllowSorting="True"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataKeyNames="courseid" DataSourceID="CourseDataSource" Font-Names="trebuchet ms"
                                        Font-Size="11px" PageSize="2" Width="1000px">
                                        <AlternatingRowStyle BackColor="AliceBlue" />
                                        <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <Columns>
                                            <asp:HyperLinkField DataNavigateUrlFields="courseid" DataNavigateUrlFormatString="course_edit_record.aspx?courseid={0}"
                                                NavigateUrl="~/course/courseadmin/course_edit_record.aspx" Text="Edit" />
                                            <asp:BoundField DataField="courseid" HeaderText="Course ID" ReadOnly="True" />
                                            <asp:BoundField DataField="crsetitle1" HeaderText="Course Title" />
                                            <asp:BoundField DataField="location" HeaderText="Location" />
                                            <asp:BoundField DataField="coordinator" HeaderText="Coordinator" />
                                            <asp:BoundField DataField="trainfrom" HeaderText="Start Date" />
                                            <asp:BoundField DataField="trainto" HeaderText="End Date" />
                                            <asp:BoundField DataField="comments" HeaderText="Comments" />
                                            <asp:BoundField DataField="slots" HeaderText="Slots" />
                                            <asp:BoundField DataField="orientid" HeaderText="Orientation Id" />
                                            <asp:BoundField DataField="sponsname" HeaderText="Primary Sponsor" />
                                            <asp:BoundField DataField="morespons" HeaderText="Morespons" />
                                            <asp:BoundField DataField="courseyear" HeaderText="Course Year" />
                                        </Columns>
                                        <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                        SelectCommand="select c.*,s.sponsname as sponsname from courses c,sponsors s&#13;&#10;where c.prisponsid=s.sponsid">
                                    </asp:SqlDataSource>
                                    &nbsp;</div>
                                
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
