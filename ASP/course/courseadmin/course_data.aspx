<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_data.aspx.cs" Inherits="course_courseadmin_course_assign_sponsor" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course Information</title>
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
                                
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							<USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							
                                <div class="page_title">
                              
                                    Course Information</div>
                                    <div class="gridview">
                                    <asp:Label ID="lblMessError" Visible=false Font-Bold=true runat="server" Text="Label"></asp:Label>
                                    <asp:GridView ID="dgCourse" runat="server" AllowPaging="True"
                                        AllowSorting="True" AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double"
                                        CellPadding="5" DataKeyNames="courseid" DataSourceID="CourseDataSource" Font-Names="Trebuchet MS"
                                        Font-Size="11px" OnRowDeleted="DeleteRow">
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:HyperLinkField DataNavigateUrlFields="courseid" DataNavigateUrlFormatString="course_edit_record.aspx?courseid={0}"
                                                NavigateUrl="~/course/courseadmin/course_edit_record.aspx" Text="Edit" >
                                                <ItemStyle Wrap="False" />
                                            </asp:HyperLinkField>
                                            <asp:HyperLinkField DataNavigateUrlFields="courseid,crsetitle1" DataNavigateUrlFormatString="course_student_data.aspx?courseid={0}&amp;coursetitle={1}"
                                                NavigateUrl="~/course/courseadmin/course_student_data.aspx" Text=" Students">
                                                <ItemStyle Wrap="False" />
                                            </asp:HyperLinkField>
                                            <asp:HyperLinkField DataNavigateUrlFields="coursecode,crsetitle1,courseid" DataNavigateUrlFormatString="course_assign_sponsor.aspx?coursecode={0}&amp;crsetitle1={1}&amp;courseid={2}"
                                                NavigateUrl="<%= WebFolder %>course/courseadmin/course_assign_sponsor.aspx" Text="Sponsors" />
                                            <asp:BoundField DataField="coursecode" HeaderText="Course Code" ReadOnly="True" />
                                            <asp:BoundField DataField="crsetitle1" HeaderText="Title"/>
                                            <asp:BoundField DataField="location" HeaderText="Location" />
                                            <asp:BoundField DataField="coordinator" HeaderText="Coordinator"/>
                                            <asp:BoundField DataField="trainfrom" HeaderText="Start Date"  HtmlEncode=False DataFormatString="{0:d}"/>
                                            <asp:BoundField DataField="trainto" HeaderText="End Date"  HtmlEncode=False DataFormatString="{0:d}"/>
                                            <asp:BoundField DataField="slots" HeaderText="Slots"  />
                                            <asp:BoundField DataField="sponsname" HeaderText="Primary Sponsor" />
                                            <asp:BoundField DataField="morespons" HeaderText="Multi Sponsor" />
                                            <asp:BoundField DataField="courseyear" HeaderText="Course Year" />
                                        </Columns>
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="Trebuchet MS" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" NextPageText="Next" />
                                    </asp:GridView></div>
                                <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="select c.*,s.sponsname as sponsname from courses c,sponsors s&#13;&#10;where c.prisponsid=s.sponsid order by c.courseid desc"
                                    DeleteCommand="DELETE courses WHERE courseid=@courseid" >
                                    <DeleteParameters>
                                        <asp:Parameter Name="courseid" />
                                    </DeleteParameters>
                                </asp:SqlDataSource>
                              
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
