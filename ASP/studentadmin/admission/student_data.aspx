<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_data.aspx.cs" Inherits="student_data" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
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
                            <td class="top_bar_right">
                                &nbsp;
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>                                
                                <div class="page_title">
                                Student Personal Information
                                </div>
                                <div class="gridview">
                                    <asp:Label ID="lblMessError" runat="server" Text="Label" Visible=false Font-Bold=true></asp:Label>
                                
                                    <asp:GridView ID="dgStudent" runat="server" AutoGenerateColumns=False  AllowPaging="True" AllowSorting=True CellPadding="5"
                                     DataSourceID="StudentDataSource" DataKeyNames="studentid" BorderColor=DarkGray BorderStyle=Double  Font-Size=11px 
                                     Font-Names="trebuchet ms" OnRowDeleted="DeleteRow"   >
                                      <AlternatingRowStyle BackColor=#EFEFEF />
                                      <HeaderStyle BackColor=#CAD3DC Font-Bold=True Font-Size=12px Font-Names="trebuchet ms" />
                                      <Columns>
                                          <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="student_edit_record.aspx?action=edit&amp;studentid={0}" NavigateUrl="~/studentadmin/admission/student_edit_record.aspx" />
                                          <asp:CommandField ShowDeleteButton=True />
                                          <asp:HyperLinkField DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="student_detail_view.aspx?studentid={0}"
                                              NavigateUrl="~/prestudentadmin/admission/student_detail_view.aspx" Text="Detail Info" >
                                              <ItemStyle Wrap="False" />
                                          </asp:HyperLinkField>
                                            <asp:BoundField HeaderText="First Name" DataField="firstname" />
                                            <asp:BoundField HeaderText="Last Name" DataField="lastname" />
                                            <asp:BoundField HeaderText="Date of Birth" DataField="dob" HtmlEncode="False" DataFormatString="{0:d}" />
                                          <asp:BoundField DataField="countryname" HeaderText="Country" />
                                      </Columns>
                                      <PagerStyle BackColor=#CAD3DC Font-Size=XX-Small Font-Names="verdana" Font-Bold="False" /> 
                                      <PagerSettings  Mode=NumericFirstLast />
                                        <FooterStyle Font-Names="Verdana" Font-Size="XX-Small" />
                                        
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                        SelectCommand="SELECT s.studentid,s.firstname,s.lastname,s.dob,c.countryname FROM student s, country c&#13;&#10;WHERE s.countryid=c.countryid ORDER BY s.studentid DESC"
                                         DeleteCommand = "DELETE student WHERE studentid=@studentid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="studentid" />
                                        </DeleteParameters>
                                    </asp:SqlDataSource>
                                    
                                
                                </div>
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
