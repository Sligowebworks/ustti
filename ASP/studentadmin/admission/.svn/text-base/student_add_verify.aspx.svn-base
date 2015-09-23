<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_add_verify.aspx.cs" Inherits="student_add_verify" %>
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
                            <td class="top_bar_right" valign="top" style="height: 11px; width: 413px;">
                            <USTTI:nav_student_level_1 ID="nav_student_level1" runat=server /> 
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" align="center" width="176">
							    <table width="100">
							    <tr>
							    <td style="width:100px" valign="top">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							    </td></tr></table>
                                
                            </td>
							<td class="content_text" valign=top >
                                <div class="page_title">Record Verification
                                </div>
                                
                                    
                                <div class="gridview">
                                <p><asp:Label ID="Label1" runat="server" 
                                Text="Our record shows the name of student you entered has duplication. The following record show the previous student record"></asp:Label>    </p>
                                
                                <p>
                                    <asp:GridView ID="dgStudent" runat="server" AllowPaging="True" AllowSorting="True"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataSourceID="StudentDataSource" Font-Names="trebuchet ms" Font-Size="11px">
                                        <PagerSettings Mode="NumericFirstLast" />
                                        <Columns>
                                            <asp:BoundField DataField="studentid" HeaderText="Student ID" />
                                            <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                            <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                            <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                                            <asp:HyperLinkField DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="student_edit_record.aspx?studentid={0}"
                                                NavigateUrl="~/studentadmin/admission/student_add_record.aspx" Text="Update" />
                                            <asp:HyperLinkField DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="student_detail_view.aspx?studentid={0}"
                                                NavigateUrl="~/studentadmin/admission/student_detail_view.aspx" Text="Detail Info" />
                                        </Columns>
                                        <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <AlternatingRowStyle BackColor="AliceBlue" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                    </asp:SqlDataSource>
                                    
                                </p>
                                </div>
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="top" style="width: 413px">
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
