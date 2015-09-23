<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_search_record.aspx.cs" Inherits="student_search_record" %>
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
		<table class="expand"  cellspacing="0" cellpadding="0">
		    <tr>
		        <td><USTTI:header_level_0 ID="header" runat=server /></td>
			</tr>		
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right">
                                &nbsp;                        
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
                            </td>
							<td class="content_text" valign=top>							    
                               <div class="page_title">
                                    Search Student Information</div>
                               <div class="search_record">
                               <TABLE class="entry_form_detail" width="90%"><TBODY><TR><TD style="WIDTH: 100px">
                                   First Name</TD><TD colSpan=2><asp:TextBox id="txtFirstName" runat="server" MaxLength="60" Font-Names="Trebuchet MS" Font-Size="11px" Wrap="False"></asp:TextBox></TD></TR>
                                   <tr>
                                       <td style="width: 100px">
    Last Name</td>
                                       <td colspan="2">
                                           <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                               MaxLength="60"></asp:TextBox></td>
                                   </tr>
                                   <TR><TD colSpan=3><asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Text="Search"></asp:Button></TD></TR><TR><TD style="HEIGHT: 18px" colSpan=3><asp:Label id="lblMsgResult" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label></TD></TR></TBODY></TABLE>
</div>
                               
                                <div class="gridview">
                                    <asp:Label ID="lblMessError" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                                        Font-Size="11px" Text="Label" Visible="False"></asp:Label>
                                    <asp:GridView ID="dgStudent" runat="server" AutoGenerateColumns=False AllowSorting=True CellPadding="5"
                                     DataSourceID="StudentDataSource" OnRowDeleted="DeleteRow" DataKeyNames="studentid" BorderColor=DarkGray BorderStyle=Double  Font-Size=11px Font-Names="trebuchet ms" >
                                      <AlternatingRowStyle BackColor=#EFEFEF  />
                                      <HeaderStyle BackColor=#CAD3DC Font-Bold=True Font-Size=12px Font-Names="trebuchet ms" />
                                      <Columns>
                                        
                                          <asp:HyperLinkField DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="student_detail_view.aspx?StudentID={0}"
                                              NavigateUrl="~/studentadmin/admission/prestudent_detail_view.aspx" Text="Detail Info" >
                                              <ItemStyle Wrap="False" />
                                          </asp:HyperLinkField>
                                        <asp:BoundField HeaderText="First Name" DataField="firstname" />
                                        <asp:BoundField HeaderText="Last Name" DataField="lastname" />
                                        <asp:BoundField HeaderText="Date of Birth" DataField="dob" HtmlEncode="False" DataFormatString="{0:d}" />
                                          <asp:BoundField DataField="countryname" HeaderText="Country" />
                                      </Columns>
                                      <PagerStyle BackColor=#CAD3DC Font-Size=11px Font-Names="trebuchet ms" /> 
                                      <PagerSettings  Mode=NumericFirstLast />
                                        
                                    </asp:GridView>
                                  
                                    <asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                       DeleteCommand="DELETE student WHERE studentid=@studentid" >
                                    </asp:SqlDataSource>
                                    
                                
                                </div>
                            </td>
						</tr>
                        <tr>
                            <td valign=bottom>
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
