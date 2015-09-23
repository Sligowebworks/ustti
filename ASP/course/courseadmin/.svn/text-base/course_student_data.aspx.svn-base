<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_student_data.aspx.cs" Inherits="course_student_data" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course's Student Information</title>
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
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							
                                <div class="page_title">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                    <div class="gridview">
                                    <asp:GridView ID="dgCourseStudent" runat="server" AutoGenerateColumns="False" BorderColor="DarkGray"
                                    BorderStyle="Double" CellPadding="5" DataKeyNames="id" DataSourceID="StudentCourseDataSource"
                                    Font-Names="Trebuchet MS" Font-Size="11px" AllowPaging="True">
                                    <PagerSettings Mode="NumericFirstLast" NextPageText="Next" />
                                            <Columns>
                                                
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="applicdate" HeaderText="App Date" ReadOnly="True" DataFormatString="{0:d}" HtmlEncode="False" />
                                                <asp:BoundField DataField="firstname" HeaderText="First Name" ReadOnly="True" />
                                                <asp:BoundField DataField="lastname" HeaderText="Last Name"  ReadOnly="True" />
                                                <asp:BoundField DataField="countryname" HeaderText="Country" ReadOnly="True"  />
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
                                            <asp:TemplateField HeaderText="Fax Sent">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("faxsent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate >
                                                <asp:DropDownList Font-Names="trebuchet ms" Font-Size="11px" ID="DropDownList5" DataValueField="Option" DataTextField="Option" DataSourceID="OptionDataSource" runat="server" SelectedValue='<%#Bind("faxsent")%>'></asp:DropDownList>
                                            </EditItemTemplate>
                                            </asp:TemplateField>
                                            </Columns>
                                            <PagerStyle BackColor="#CAD3DC" Font-Names="Trebuchet MS" Font-Size="11px" />
                                            <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                            <AlternatingRowStyle BackColor="#EFEFEF" />
                                        </asp:GridView></div>
                                        <asp:SqlDataSource ID="StudentCourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                         UpdateCommand="UPDATE [studentcourse] SET [accepted]=@accepted,[confirmed]=@confirmed,[participat]=@participat,[faxsent]=@faxsent WHERE [studentcrseid]=@id">
                                    
                                     </asp:SqlDataSource>
                                <asp:SqlDataSource ID="OptionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [Option]"></asp:SqlDataSource>
                              
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
