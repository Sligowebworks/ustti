<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_student_data2.aspx.cs" Inherits="course_courseadmin_course_assign_sponsor" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
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
                                <USTTI:nav_course_level_1 ID="nav_courseadmin_level1" runat=server /></td>
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
                                <p></p>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                    <div class="gridview">
                                        <asp:GridView ID="dgStudentCourse" runat="server" AutoGenerateColumns="False" BorderColor="DarkGray"
                                            BorderStyle="Double" CellPadding="5" DataKeyNames="studentcrseid" DataSourceID="StudentCourseDataSource1"
                                            Font-Names="Trebuchet MS" Font-Size="11px">
                                            <PagerSettings Mode="NumericFirstLast" NextPageText="Next" />
                                            <Columns>
                                                <asp:BoundField DataField="studentcrseid" HeaderText="studentcrseid" ReadOnly="True"
                                                    SortExpression="studentcrseid" />
                                                <asp:BoundField DataField="studentid" HeaderText="studentid" SortExpression="studentid" />
                                                <asp:BoundField DataField="applicationid" HeaderText="applicationid" SortExpression="applicationid" />
                                                <asp:TemplateField HeaderText="Accepted">
                                                
                                                <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("accepted") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate >
                                                <asp:DropDownList Font-Names="trebuchet ms" Font-Size="11px" ID="DropDownList2" DataValueField="Option" DataTextField="Option" DataSourceID="OptionDataSource" runat="server" SelectedValue='<%#Bind("accepted")%>'>
                                                
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Confirmed">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("confirmed") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate >
                                                <asp:DropDownList Font-Names="trebuchet ms" Font-Size="11px" ID="DropDownList3" DataValueField="Option" DataTextField="Option" DataSourceID="OptionDataSource" runat="server" SelectedValue='<%#Bind("confirmed")%>'></asp:DropDownList>
                                            </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Participat">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("participat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate >
                                                <asp:DropDownList Font-Names="trebuchet ms" Font-Size="11px" ID="DropDownList4" DataValueField="Option" DataTextField="Option" DataSourceID="OptionDataSource" runat="server" SelectedValue='<%#Bind("participat")%>'></asp:DropDownList>
                                            </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Participat">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("faxsent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate >
                                                <asp:DropDownList Font-Names="trebuchet ms" Font-Size="11px" ID="DropDownList5" DataValueField="Option" DataTextField="Option" DataSourceID="OptionDataSource" runat="server" SelectedValue='<%#Bind("faxsent")%>'></asp:DropDownList>
                                            </EditItemTemplate>
                                            </asp:TemplateField><asp:BoundField DataField="preference" HeaderText="preference" SortExpression="preference" />
                                                
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                            <PagerStyle BackColor="Control" Font-Names="Trebuchet MS" Font-Size="11px" />
                                            <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                            <AlternatingRowStyle BackColor="AliceBlue" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="OptionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                            SelectCommand="SELECT * FROM [Option]"></asp:SqlDataSource>
                                        &nbsp;
                                        &nbsp;&nbsp;</div>
                                <asp:SqlDataSource ID="StudentCourseDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>" 
                                 SelectCommand="SELECT * FROM studentcourse"
                                UpdateCommand="UPDATE [studentcourse] SET [preference]=@preference, [accepted]=@accepted,[confirmed]=@confirmed,[participat]=@participat,[faxsent]=@faxsent WHERE [studentcrseid]=@studentcrseid"  
                                 DeleteCommand="DELETE studentcourse WHERE studentcrseid=@studentcrseid">
                                    
                                     </asp:SqlDataSource>
                                &nbsp;
                              
                            </td>
						</tr>
                        <tr>
                            <td valign="top" style="height: 65px">
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
