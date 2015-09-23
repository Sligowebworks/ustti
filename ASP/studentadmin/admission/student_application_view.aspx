<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_application_view.aspx.cs" Inherits="student_application_view" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="student_info_header" Src="~/controls/student_header_info.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_student.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
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
                            <td class="top_bar_right" valign="top" >
                                &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" width="176">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></div>
                                 
                                    <table id="student_data_entry_form" cellpadding="5" class="data_entry_form">
                                        <tbody>
                                            <tr>
                                                <td class="entry_form_header" colspan="3" valign="top">
                                                    Student's Application Information</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" valign="middle">
                                                 <USTTI:student_info_header id="student_info_header" runat="server"></USTTI:student_info_header>   
                                                    <table id="tblCourseLoadDetail" runat="server" cellpadding="4" class="sub_page_entry_form">
                                                        <tr>
                                                            <td class="entry_form_header" colspan="3">
                                                                Application History Detail</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                            <asp:Label id="lblMessNull" runat="server" Text="Label" Font-Size="11px" Font-Names="Trebuchet MS" Font-Bold="True"></asp:Label>
                                    <asp:DataGrid AlternatingItemStyle-BackColor="#EFEFEF" ID="dgApplication" runat="server" AllowPaging="True" AllowSorting="True"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataKeyNames="applicationid" Font-Names="trebuchet ms"
                                        Font-Size="11px">
                                        
                                        <Columns>    
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <a href="<%=WebFolder %>studentadmin/application/application_edit_record.aspx?applicationid=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "applicationid").ToString() ) %>&StudentID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "studentid").ToString() ) %>">Edit</a>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                                                                
                                            <asp:BoundColumn DataField="date_from" HeaderText="Orientation Start Date" DataFormatString="{0:d}" />
                                            <asp:BoundColumn DataField="year" HeaderText="App Year" />
                                            <asp:BoundColumn DataField="applicdate" DataFormatString="{0:d}" HeaderText="Appl Date" />
                                            <asp:BoundColumn DataField="departus" DataFormatString="{0:d}" HeaderText="Depart Date" />
                                            <asp:BoundColumn DataField="arriveus" DataFormatString="{0:d}" HeaderText="Arrival Date" />
                                            <asp:BoundColumn DataField="hoteldc" HeaderText="Hotel DC" />
                                            <asp:BoundColumn DataField="checkoutdc" DataFormatString="{0:d}" HeaderText="Chk Out Date" />
                                            <asp:BoundColumn DataField="needsfunds" HeaderText="Needs Fund" />
                                        </Columns>
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />                                        
                                    </asp:DataGrid>
                                    <br />
                                    <asp:Button ID="btnAddApplication" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                    Text="Add Application" OnClick="btnAddApplication_Click" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <asp:SqlDataSource ID="ApplicationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                    </asp:SqlDataSource>
                                    &nbsp;
                                
                             
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom">
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
