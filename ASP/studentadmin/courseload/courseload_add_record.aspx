<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courseload_add_record.aspx.cs" Inherits="courseload_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_application_level_1" Src="~/controls/nav_application_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student's Course Load Each Application Information</title>
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
                            <td align="center" class="top_bar_left" style="width: 176px" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                            <USTTI:nav_application_level_1 ID="nav_regsitration_level1" runat=server />
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" style="width: 176px">
							    <table width="100">
							    <tr>
							    <td style="width:100px" valign="top">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							    </td></tr></table>
                                
                            </td>
							<td class="content_text" valign=top>							
                                <div class="page_title">
                                    Student's Course Load Information</div>
                                <p></p>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5"><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Student's Course Load Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table id="tblEntryForm" runat="server" class="entry_form_detail" width="90%">
                                                <tr>
                                                    <td style="width: 100px; height: 27px;">
                                                        Student ID</td>
                                                    <td colspan="2" style="height: 27px">
                                                        <asp:TextBox ID="txtSID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                           ReadOnly="True" Width="60px"></asp:TextBox>
                                                        <asp:Button ID="btnBrowseSID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            OnClick="btnBrowseSID_Click" Text="Browse..." Width="56px" />
                                                        </td>
                                                </tr>
                                            </table>
                                            <TABLE id="tblEntryForm2" class="entry_form_detail" width="90%" runat="server"><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 27px">Application ID</TD><TD style="HEIGHT: 27px" 
colSpan=2><asp:TextBox id="txtAID" runat="server" Width="60px" ReadOnly="True" Font-Size="11px" Font-Names="Trebuchet MS"></asp:TextBox> 
<asp:Button id="btnBrowseAID" onclick="btnBrowseAID_Click" runat="server" Width="55px" Font-Size="11px" Font-Names="Trebuchet MS" Text="Browse..."></asp:Button> </TD></TR></TBODY></TABLE>
                                                        <table id="tblCourseLoadDetail" runat="server" cellpadding="4" class="sub_page_entry_form">
                                                            <tr>
                                                                <td class="entry_form_header" colspan="3">
                                                                    Add Courses</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3">
                                                                    <table id="tblSubPageEntryDetail" runat="server" class="subpage_form_detail" width="90%">
                                                                        <tr>
                                                                <td style="width: 75px; height: 26px">
                                                                    Course Title</td><td colspan="2">
                                                                        
                                                                        <asp:TextBox ID="txtCID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" ReadOnly="True" Width="60px"></asp:TextBox><asp:Button ID="btnBrowseCourse"
                                                                            runat="server" Text="Browse..." Font-Names="Trebuchet MS" Font-Size="11px" Width="55px" OnClick="btnBrowseCourse_Click" />
                                                                        </td>
                                                                        </tr>
                                                                        <tr>
                                                                <td style="width: 75px; height: 25px">
                                                                    Accepted</td><td colspan="2" style="height: 27px">
                                                                        <asp:RadioButtonList ID="AcceptedButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                        <asp:ListItem>Yes</asp:ListItem>
                                                                        <asp:ListItem>No</asp:ListItem>
                                                                    </asp:RadioButtonList></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Confirmed</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="ConfirmButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem>No</asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Participated</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="ParticipatButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem>No</asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Fax Sent</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="FaxButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem>No</asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Preference</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                    <asp:TextBox ID="txtPref" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>
                                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPref"
                                                                                    Display="Dynamic" ErrorMessage="Please enter number only" Operator="DataTypeCheck"
                                                                                    Type="Integer"></asp:CompareValidator></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="height: 25px" colspan="3">
                                                                    <asp:Button ID="btnAddCourse" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"  Text="Add Course" OnClick="btnAddCourse_Click" Visible="False" /></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" >
                                                                    <asp:Label ID="lblMaxMessage" runat="server" Font-Bold="True" ForeColor="Red" Text="You have reached max courses allowed (5 courses)"
                                                                        Visible="False"></asp:Label>
                                                                    <asp:GridView ID="dgCourseLoad" runat="server"
                                                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                                        DataSourceID="CourseLoadDataSource" DataKeyNames="studentcrseid" Font-Names="trebuchet ms" Font-Size="11px"
                                                                        HorizontalAlign="Left" OnRowDeleted="DeleteRow"  >
                                                                        <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                                        <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                                        <Columns>
                                                                            <asp:CommandField    ShowDeleteButton="True" />
                                                                            <asp:BoundField DataField="courseid" HeaderText="Course ID" SortExpression="courseid" />
                                                                            <asp:BoundField DataField="crsetitle1" HeaderText="Crs Title" SortExpression="crsetitle1" />
                                                                            <asp:BoundField DataField="trainfrom" HeaderText="Start Date" SortExpression="trainfrom" />
                                                                            <asp:BoundField DataField="trainto" HeaderText="End Date" SortExpression="trainto" />
                                                                            <asp:BoundField DataField="slots" HeaderText="Slot" SortExpression="slots" />
                                                                        </Columns>
                                                                        <AlternatingRowStyle BackColor="AliceBlue" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" >
                                                                    <asp:Button id="btnFinalize" onclick="btnSubmit_Click" runat="server" Text="Finalize Course Load" Width="140px" Font-Names="Trebuchet MS" Font-Size="11px" Visible="False"></asp:Button></td>
                                                            </tr>
                                                        </table>
                                            <asp:GridView ID="dgStudent" runat="server" AllowPaging="True" AllowSorting="True"
                                                AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                DataKeyNames="studentid"  DataSourceID="StudentDataSource" Font-Names="trebuchet ms"
                                                Font-Size="11px" OnSelectedIndexChanged="SendSID" Visible="False">
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="studentid" HeaderText="Student ID" />
                                                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                                                </Columns>
                                                <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                            </asp:GridView>
                                            <asp:Label ID="lblNullMessage" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                                                Font-Size="11px" Text="This student has not been entered to application table"
                                                Visible="False"></asp:Label>
                                            <asp:GridView ID="dgApplication" runat="server" AllowPaging="True" AllowSorting="True"
                                                AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                DataSourceID="ApplicationDataSource" DataKeyNames="applicationid" OnSelectedIndexChanged="SendAID" Font-Names="trebuchet ms" Font-Size="11px" Visible="False">
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="applicationid" HeaderText="App ID" />
                                                    <asp:BoundField DataField="applicdate" HeaderText="App Date" />
                                                    <asp:BoundField DataField="arriveus" HeaderText="Arrival Date" />
                                                    <asp:BoundField DataField="year" HeaderText="Year" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:GridView ID="dgCourse" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                BorderColor="DarkGray" BorderStyle="Double" CellPadding="5" DataKeyNames="courseid"
                                                DataSourceID="CourseDataSource" OnSelectedIndexChanged="SendCID" Font-Names="trebuchet ms" Font-Size="11px" Visible="False">
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="courseid" HeaderText="Course ID" ReadOnly="True" />
                                                    <asp:BoundField DataField="crsetitle1" HeaderText="Course Title" />
                                                </Columns>
                                                <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3></TD></TR></TBODY></TABLE>
                                </div>
                                <asp:SqlDataSource ID="StudentDataSource"
                                    runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [studentid], [firstname], [lastname], [dob] FROM [student]">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="ApplicationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                    </asp:SqlDataSource>
                                <asp:SqlDataSource ID="CourseLoadDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                  DeleteCommand="DELETE FROM studentcourse WHERE [studentcrseid]=@studentcrseid">
                                
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT courseid,crsetitle1&#13;&#10;FROM courses">
                                </asp:SqlDataSource>
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="top">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>
