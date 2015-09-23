<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_assign_sponsor.aspx.cs" Inherits="course_assign_sponsor" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course Sponsor</title>
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
                            <td class="top_bar_right" valign="top" style="height: 11px">
                                &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							
                                <div class="page_title">
                                    Course's Sponsors </div>
                                
                                    <table class="data_entry_form" cellpadding="4">
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top" style="height: 27px">
                                                Course &amp; Sponsor Information</td>
                                        </tr>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table class="entry_form_detail" id="tblSelectCourse" runat=server>
                                                <tr>
                                            <td style="width: 100px; height: 26px;" valign="middle">
                                                Course Code</td>
                                                    <td colspan="2" style="height: 26px">
                                                        <asp:Label ID="lblCourseCode" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 26px" valign="middle">
                                                        Course Title</td>
                                                    <td colspan="2" style="height: 26px">
                                                        <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td valign="top">
                                                <table id="tblMultiSponsorForm" runat="server" cellpadding="4" class="sub_page_entry_form">
                                                    <tr>
                                                        <td class="entry_form_header" colspan="3" style="height: 28px">
                                                            Add Additional Sponsors</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 76px">Sponsor Name</td>
                                                        <td >
                                                            <asp:DropDownList ID="MultiSponsList" runat="server" DataSourceID="SponsorDataSource"
                                                                DataTextField="sponsname" DataValueField="sponsid" Font-Names="Trebuchet MS"
                                                                Font-Size="11px" Width="250px">
                                                            </asp:DropDownList>
                                                            <asp:Button ID="btnAddSponsor" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                 OnClick="btnAddSponsor_Click" Text="Add Sponsor" Width="71px" />
                                                         </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" >
                                                            <asp:Label ID="lblMsgDup" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                                            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                                                            <asp:GridView ID="dgSponsCrse" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                                                BorderColor="DarkGray" BorderStyle="Double" CellPadding="5" DataSourceID="SponsCrsDataSource"
                                                                Font-Names="trebuchet ms" Font-Size="11px" HorizontalAlign="Left" AllowPaging="True"
                                                                DataKeyNames="sponcrseid" OnRowDeleted="DeleteRow">
                                                                <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                                                 <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                                <Columns>
                                                                    <asp:CommandField ShowDeleteButton="True" />
                                                                    <asp:BoundField DataField="sponsname" HeaderText="Sponsor Name" />
                                                                    <asp:BoundField DataField="contact" HeaderText="Contact" />
                                                                    <asp:BoundField DataField="address1" HeaderText="Address" />
                                                                    <asp:BoundField DataField="city" HeaderText="City" />
                                                                    <asp:BoundField DataField="phone1" HeaderText="Phone" />
                                                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                                                </Columns>
                                                               <AlternatingRowStyle BackColor="#EFEFEF" />
                                                            </asp:GridView>
                                                            </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnSave" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    OnClick="btnSave_Click" Text="Save" Visible="False" /></td>
                                        </tr>
                                    </table>
                              
                                <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [crsetitle1], [courseid] FROM [courses]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SponsCrsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    DeleteCommand="DELETE  FROM sponsorcrse WHERE sponcrseid=@sponcrseid"  >
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SponsorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [sponsname], [sponsid] FROM [sponsors]"></asp:SqlDataSource>
                                    
                                
                           
                                    
                                
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
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
