<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_courseload_record.aspx.cs" Inherits="student_courseload_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_courseload_level_1" Src="~/controls/nav_courseload_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="student_header_info" Src="~/controls/student_header_info.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_student.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student's Course Load History Information</title>
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
                            <td align="center" class="top_bar_left" style="width: 176px" >&nbsp;
                                </td>
                            <td class="top_bar_right">
                            &nbsp;
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							    <USTTI:menu ID="menu" runat="server" />
							    <div class="page_title">
                                    Student's Course Load Information</div>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5">
                                <TBODY><TR><TD class="entry_form_header" vAlign=top colSpan=3>
                                    Student's Course Load Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                           <USTTI:student_header_info ID="student_header_info" runat=server />
                                                        <table id="tblCourseLoadDetail" runat="server" cellpadding="4" class="sub_page_entry_form">
                                                            <tr>
                                                                <td class="entry_form_header" colspan="3">
                                                                    Course Load Detail</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3">
                                                                    <table id="tblSubPageEntryDetail" runat="server" class="subpage_form_detail" width="90%">
                                                                        <tr>
                                                                <td style="width: 75px; height: 26px">
                                                                    Course ID</td><td colspan="2">
                                                                        
                                                                        <asp:TextBox ID="txtCID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="60px"></asp:TextBox><asp:Button ID="btnBrowseCourse"
                                                                            runat="server" Text="Browse..." Font-Names="Trebuchet MS" Font-Size="11px" Width="55px" OnClick="btnBrowseCourse_Click" />
                                                                        </td>
                                                                        </tr>
                                                                        <tr>
                                                                <td style="width: 75px; height: 25px">
                                                                    Accepted</td><td colspan="2" style="height: 27px">
                                                                        <asp:RadioButtonList ID="AcceptedButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                        <asp:ListItem>Yes</asp:ListItem>
                                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                        </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Confirmed</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="ConfirmButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem Selected="True">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                                                </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Participated</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="ParticipatButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem Selected="True">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                                                </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 75px; height: 25px">
                                                                    Fax Sent</td>
                                                                            <td colspan="2" style="height: 27px">
                                                                                <asp:RadioButtonList ID="FaxButtonList" runat="server" Font-Names="Trebuchet MS"
                                                                        Font-Size="11px" RepeatDirection="Horizontal" Width="100px">
                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                    <asp:ListItem Selected="True">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                                                </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="height: 25px" colspan="3">
                                                                    <asp:Button ID="btnAddCourse" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"  Text="Add Course Load" OnClick="btnAddCourse_Click" /></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" >
                                                                    <asp:Label ID="lblErrMessage" runat="server" Font-Bold="True" ForeColor="Black"
                                                                        Visible="False"></asp:Label>&nbsp;
                                                                    <asp:Label ID="lblNullMessage2" runat="server" Text="Label" Visible=False Font-Bold="True"></asp:Label>
                                                                    <asp:Label ID="lblNullMessage3" runat="server" Text="Label" Visible=False Font-Bold="True"></asp:Label>
                                                                    <asp:Label ID="lblDupMessage" runat="server" Font-Bold="True" Text="The Course You Entered Already in The Course Load"
                                                                        Visible="False"></asp:Label>
                                                                    <asp:GridView ID="dgCourseLoad" runat="server"
                                                                            AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                                            DataKeyNames="id" DataSourceID="CourseLoadDataSource" Font-Names="Trebuchet MS"
                                                                            Font-Size="11px" OnRowEditing="EditRow" OnRowUpdating="UpdateRow" OnRowCancelingEdit="CancelEdit"
                                                                             OnRowDeleting="DeleteRow" AllowPaging="True">
                                                                            
                                                                            <Columns>
                                                                                <asp:CommandField ShowEditButton="True" />
                                                                                <asp:CommandField ShowDeleteButton="True" />
                                                                                <asp:BoundField DataField="applicdate" DataFormatString="{0:d}" HeaderText="App Date"
                                                                                    HtmlEncode="False" ReadOnly=true />
                                                                                <asp:BoundField DataField="courseid" HeaderText="Course ID" ReadOnly="True" />
                                                                                <asp:BoundField DataField="crsetitle1" HeaderText="Course Title" ReadOnly="True" >
                                                                                    <ItemStyle Wrap="False" />
                                                                                </asp:BoundField>
                                                                                <asp:TemplateField HeaderText="Accepted">
                                                                                    <EditItemTemplate>
                                                                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="OptionDataSource"
                                                                                            DataTextField="Option" DataValueField="Option" Font-Names="trebuchet ms" Font-Size="11px"
                                                                                            SelectedValue='<%#Bind("accepted")%>'>
                                                                                        </asp:DropDownList>
                                                                                   </EditItemTemplate>
                                                                                   <ItemTemplate>
                                                                                        <asp:Label  ID="Label2" runat="server" Text='<%# Bind("accepted") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Confirmed">
                                                                                    <EditItemTemplate>
                                                                                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="OptionDataSource"
                                                                                            DataTextField="Option" DataValueField="Option" Font-Names="trebuchet ms" Font-Size="11px"
                                                                                            SelectedValue='<%#Bind("confirmed")%>'>
                                                                                        </asp:DropDownList>
                                                                                    </EditItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("confirmed") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Participat">
                                                                                    <EditItemTemplate>
                                                                                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="OptionDataSource"
                                                                                            DataTextField="Option" DataValueField="Option" Font-Names="trebuchet ms" Font-Size="11px"
                                                                                            SelectedValue='<%#Bind("participat")%>'>
                                                                                        </asp:DropDownList>
                                                                                    </EditItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("participat") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Fax Sent">
                                                                                    <EditItemTemplate>
                                                                                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="OptionDataSource"
                                                                                            DataTextField="Option" DataValueField="Option" Font-Names="trebuchet ms" Font-Size="11px"
                                                                                            SelectedValue='<%#Bind("faxsent")%>'>
                                                                                        </asp:DropDownList>
                                                                                    </EditItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("faxsent") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                    <ItemStyle Wrap="False" />
                                                                                </asp:TemplateField>
                                                                                
                                                                            </Columns>
                                                                            
                                                                            <PagerStyle BackColor="#CAD3DC" Font-Names="Trebuchet MS" Font-Size="11px" />
                                                                            <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                                            <AlternatingRowStyle BackColor="#EFEFEF" />
                                                                        </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" >
                                                                    <asp:Button id="btnAddCourse2" onclick="btnSubmit_Click" runat="server" Text="Add Course" Font-Names="Trebuchet MS" Font-Size="11px"></asp:Button>
                                                                    </td>
                                                            </tr>
                                                        </table>
                                           <asp:GridView ID="dgCourse" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                BorderColor="DarkGray" BorderStyle="Double" CellPadding="5" DataKeyNames="courseid"
                                                DataSourceID="CourseDataSource" OnSelectedIndexChanged="SendCID" Font-Names="trebuchet ms" 
                                                Font-Size="11px" Visible="False" >
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="courseid" HeaderText="Course ID" ReadOnly="True" />
                                                    <asp:BoundField DataField="crsetitle1" HeaderText="Course Title" />
                                                </Columns>
                                                <PagerStyle BackColor="#CAD3DC" Font-Names="Trebuchet MS" Font-Size="11px" />
                                                <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <AlternatingRowStyle BackColor="#EFEFEF" />
                                                                        
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3>
                                        &nbsp;<table>
                                            <tr>
                                                <td style="width: 53px">
                                                    <asp:Button ID="btnSaveBack" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                        OnClick="btnSaveBackLater_Click" Text="Save & Back Later" Width="100px" /></td>
                                                <td style="width: 3px">
                                        <asp:Button ID="btnContinue" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                            OnClick="btnContinue_Click" Text="Continue" /></td>
                                            </tr>
                                        </table>
                                    </TD></TR></TBODY>
                                    </TABLE>
                                </div>
                               &nbsp;&nbsp;
                               <asp:SqlDataSource ID="CourseLoadDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                  DeleteCommand="DELETE FROM studentcourse WHERE [studentcrseid]=@id"
                                  UpdateCommand="UPDATE [studentcourse] SET [accepted]=@accepted,[confirmed]=@confirmed,[participat]=@participat,[faxsent]=@faxsent WHERE [studentcrseid]=@id" >
                                
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [courseid], [crsetitle1] FROM [courses] ORDER BY [courseid] DESC">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="OptionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [Option]"></asp:SqlDataSource>
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>
