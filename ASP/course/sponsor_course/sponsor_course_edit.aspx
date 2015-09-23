<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sponsor_course_edit.aspx.cs" Inherits="course_courseadmin_course_assign_sponsor" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Data</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />
		
	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0">
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                                &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" width="176">
							    <table width="100">
							    <tr>
							    <td style="width:100px" valign="top">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							    </td></tr></table>
                                
                            </td>
							<td class="content_text" valign=top>
                                <div class="page_title">
                                    Course Sponsor Information&nbsp;<table class="data_entry_form" cellpadding="4">
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top">
                                                Course &amp; Sponsor Information</td>
                                        </tr>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table class="entry_form_detail" id="tblSelectCourse" runat=server>
                                                <tr>
                                            <td style="width: 100px" valign="middle">
                                                Course</td>
                                                    <td colspan="2">
                                                <asp:DropDownList ID="CourseList" runat="server" Font-Names="Trebuchet MS"
                                                    Font-Size="11px"  DataSourceID="CourseDataSource" DataTextField="crsetitle1" DataValueField="courseid" Width="200px">
                                                    </asp:DropDownList>
                                                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            Text="Show Sponsors" OnClick="btnSubmit_Click" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td valign="top" >
                                                <table id="tblMultiSponsorForm" runat="server" cellpadding="4" class="sub_page_entry_form">
                                                    <tr>
                                                        <td class="entry_form_header" colspan="3">
                                                            Sponsor List</td>
                                                    </tr>
                                                    <tr>
                                                        <td  colspan="3">
                                                            <asp:Label ID="lblPrimSponsor" runat="server" Text="Label"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" style="height: 178px">
                                                            <asp:GridView ID="dgSponsCrse" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                                                BorderColor="DarkGray" BorderStyle="Double" CellPadding="5" DataSourceID="SponsCrsDataSource"
                                                                Font-Names="trebuchet ms"  Font-Size="11px" HorizontalAlign="Left">
                                                                <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                                <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="sponsname" HeaderText="Sponsor Name" />
                                                                    <asp:BoundField DataField="contact" HeaderText="Contact" />
                                                                    <asp:BoundField DataField="address1" HeaderText="Address" />
                                                                    <asp:BoundField DataField="city" HeaderText="City" />
                                                                    <asp:BoundField DataField="phone1" HeaderText="Phone" />
                                                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                                                    <asp:CommandField ShowDeleteButton="True" />
                                                                    <asp:CommandField />
                                                                    <asp:CommandField ShowEditButton="True" />
                                                                </Columns>
                                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">                                    </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SponsCrsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                </asp:SqlDataSource>
                                    &nbsp;
                                    
                                
                            </div>
                                    
                                
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="top">
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
