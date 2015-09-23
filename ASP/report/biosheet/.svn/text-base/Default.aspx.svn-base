<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/report/biosheet/Default.aspx.cs" Inherits="individualbio_default" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Individual Bio Fact Sheet Report</title>
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
                            <td align="center" class="top_bar_left" style="width: 176px" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                            <USTTI:nav_miscellaneous_level_1 ID="nav_miscellaneous_level1" runat=server /> 
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							    
                            </td>
							<td class="content_text" valign=top>							    
                                <div class="page_title">
                                    Individual Bio Fact Sheet Report Generator
                                    </div>
                                
                                    <table id="student_data_entry_form" cellpadding="5" class="data_entry_form">
                                        <tbody>
                                            <tr>
                                                <td class="entry_form_header" colspan="3" valign="top">
                                                    Report Parameter</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" valign="middle">
                                                    <table id="tblEntryForm" runat="server" class="entry_form_detail" width="90%">
                                                        <tr>
                                                            <td style="width: 100px; height: 27px">
                                                                First Name</td>
                                                            <td colspan="2" style="height: 27px">
                                                                <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100px; height: 27px">
                                                                Last Name</td>
                                                            <td colspan="2" style="height: 27px">
                                                                <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100px; height: 27px">
                                                                Country</td>
                                                            <td colspan="2" style="height: 27px">
                                                                <asp:Label ID="lblCountry" runat="server"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" style="height: 27px">
                                                                <asp:Button ID="btnBrowseSID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                                    OnClick="btnBrowseSID_Click" Text="Browse..." Width="56px" /></td>
                                                        </tr>
                                                    </table>
                                                    <asp:GridView ID="dgStudent" runat="server" AllowPaging="True" AllowSorting="True"
                                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                        DataKeyNames="studentid,firstname,lastname,countryname" DataSourceID="StudentDataSource" Font-Names="trebuchet ms"
                                                        Font-Size="11px" OnSelectedIndexChanged="SendSID" Visible="False">
                                                        <PagerSettings Mode="NumericFirstLast" />
                                                        <Columns>
                                                            <asp:CommandField ShowSelectButton="True" />
                                                            <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                                            <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                                            <asp:BoundField DataField="dob" DataFormatString="{0:d}" HeaderText="Date of Birth" HtmlEncode="False" />
                                                            <asp:BoundField DataField="countryname" HeaderText="Country" />
                                                        </Columns>
                                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                                    </asp:GridView>
                                                    &nbsp; &nbsp;&nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="height: 29px">
                                                    <asp:Button ID="btnGenerateReport" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                        Text="Generate Report" Visible="False" OnClick="btnGenerateReport_Click" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                
                                
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                                <asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT s.studentid,s.firstname,s.lastname,s.dob,c.countryname &#13;&#10;FROM student s,country c&#13;&#10;WHERE s.countryid=c.countryid">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="ApplicationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                </asp:SqlDataSource>
                         
                            </td>
                        </tr>
						
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
