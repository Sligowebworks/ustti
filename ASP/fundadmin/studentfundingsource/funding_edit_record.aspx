<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funding_edit_record.aspx.cs" Inherits="course_courseadmin_course_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_studentfund_level_1" Src="~/controls/nav_funding_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Data</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />

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
                              <USTTI:nav_studentfund_level_1 ID="nav_studentfund_level1" runat=server />
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
							<td class="content_text" valign=top>
                                <div class="page_title">
                                    Register Course</div>
                                <p></p>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5"><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Student's Funding Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table id="tblEntryForm" runat="server" class="entry_form_detail" width="90%">
                                                <tr>
                                                    <td style="width: 100px">
                                                        Student ID</td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtSID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" Width="60px"></asp:TextBox>
                                                        <asp:Button ID="btnBrowseSID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            OnClick="btnBrowseSID_Click" Text="Browse..." Width="56px" />
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        Funder</td>
                                                    <td colspan="2">
                                                        <asp:DropDownList ID="FunderList" runat="server" DataSourceID="FunderDataSource"
                                                            DataTextField="fundername" DataValueField="funderid" Font-Names="Trebuchet MS"
                                                            Font-Size="11px">
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        Fund Type</td>
                                                    <td colspan="2">
                                                        <asp:DropDownList ID="FundTypeList" runat="server" DataSourceID="FundTypeDataSource"
                                                            DataTextField="fundtypdes" DataValueField="fundtypid" Font-Names="Trebuchet MS"
                                                            Font-Size="11px">
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        Begin Date</td>
                                                    <td colspan="2">
                                                        <table class="date_entry">
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" valign="middle" style="width: 18px">
                                                                        Month</td>
                                                                    <td align="left" valign="middle" style="width: 30px">
                                                                        <asp:DropDownList ID="FromMonthList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                    <td align="left" style="width: 3px" valign="middle">
                                                                        Day</td>
                                                                    <td align="left" style="width: 7px" valign="middle">
                                                                        <asp:DropDownList ID="FromDayList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                    <td align="left" style="width: 5px" valign="middle">
                                                                        Year</td>
                                                                    <td align="left" style="width: 2px" valign="middle">
                                                                        <asp:DropDownList ID="FromYearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        End Date</td>
                                                    <td colspan="2">
                                                        <table class="date_entry">
                                                            <tbody>
                                                                <tr>
                                                                    <td align="left" valign="middle" style="width: 19px">
                                                                        Month</td>
                                                                    <td align="left" valign="middle" style="width: 35px">
                                                                        <asp:DropDownList ID="ToMonthList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                    <td align="left" style="width: 3px" valign="middle">
                                                                        Day</td>
                                                                    <td align="left" style="width: 7px" valign="middle">
                                                                        <asp:DropDownList ID="ToDayList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                    <td align="left" style="width: 5px" valign="middle">
                                                                        Year</td>
                                                                    <td align="left" style="width: 2px" valign="middle">
                                                                        <asp:DropDownList ID="ToYearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                                        </asp:DropDownList></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        Year</td>
                                                    <td colspan="2">
                                                        <asp:DropDownList ID="YearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 78px;">
                                                        Description</td>
                                                    <td colspan="2" style="height: 78px">
                                                        <asp:TextBox ID="txtDesc" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        Amount</td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtAmount" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount"
                                                            Display="Dynamic" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAmount"
                                                            Display="Dynamic" ErrorMessage="Please enter currency format" Operator="DataTypeCheck"
                                                            Type="Currency"></asp:CompareValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        PIO</td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtPIO" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td colspan="2">
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:GridView ID="dgStudent" runat="server" AllowPaging="True" AllowSorting="True"
                                                AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                DataSourceID="StudentDataSource" DataKeyNames="studentid" OnSelectedIndexChanged="SendSID" Font-Names="trebuchet ms" Font-Size="11px" Visible="False">
                                                <AlternatingRowStyle BackColor="AliceBlue"  />
                                                <HeaderStyle BackColor="Control" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <Columns>
                                                    <asp:BoundField DataField="studentid" HeaderText="Student ID" />
                                                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                                                    <asp:CommandField ShowSelectButton="True" />
                                                </Columns>
                                                <PagerStyle BackColor="Control" Font-Names="trebuchet ms" Font-Size="11px" />
                                                <PagerSettings Mode="NumericFirstLast" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3><asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Text="Save"></asp:Button></TD></TR></TBODY></TABLE>
                                </div>
                                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>" SelectCommand="SELECT [studentid], [firstname], [lastname], [dob] FROM [student]">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="FunderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [funders]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="FundTypeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [fundtype]"></asp:SqlDataSource>
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
