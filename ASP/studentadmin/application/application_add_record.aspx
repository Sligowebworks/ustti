<%@ Page Language="C#" AutoEventWireup="true" CodeFile="application_add_record.aspx.cs" Inherits="applicationaddrecord" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_application_level_1" Src="~/controls/nav_application_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student's Application Information</title>
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
                                &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>						
                                <div class="page_title">
                                    Student's Application Information</div>
                                <p></p>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5">
                                <TBODY><TR><TD class="entry_form_header" vAlign=top colSpan=3>
                                    Student's Application Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table id="tblEntryForm" runat="server" class="entry_form_detail" width="90%">
                                                <tr>
                                                    <td style="width: 100px">
                                                        Student Name</td>
                                                    <td colspan="2">
                                                        &nbsp;<asp:Label ID="lblStudentName" runat="server" Text="Label"></asp:Label><asp:TextBox ID="txtSID" runat="server" Enabled="False" Font-Names="Trebuchet MS"
                                                            Font-Size="11px" Visible="False" Width="60px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 27px">
                                                        Orientation Start Date <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2" style="height: 27px">
                                                        <asp:Label ID="lblStartDate" runat="server"></asp:Label>
                                                        <asp:Button ID="btnBrowseOID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            OnClick="btnBrowseOID_Click" Text="Browse..." Width="55px" />
                                                        <asp:TextBox ID="txtOID" runat="server" Font-Names="Trebuchet MS"
                                                            Font-Size="11px" Visible=false ReadOnly="True" Width="60px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOID"
                                                            Display="Dynamic" Enabled="False" ErrorMessage="required" Font-Names="Trebuchet MS"
                                                            Font-Size="11px" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px"  valign="top">
                                                        Application Date <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2"  valign="top">
                                                    <USTTI:date_selector ID="application_date" runat=server />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        Year</td>
                                                    <td colspan="2" valign="top">
                                                        <asp:Label ID="lblYear" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        US Arrival Date <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2" valign="top"><USTTI:date_selector ID="arrival_date" runat=server />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        US Departure Date <span style="color: #ff0033">*</span></td>
                                                    <td align="left" colspan="2" valign="top">
                                                    <USTTI:date_selector ID="departure_date" runat=server />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        DC Hotel <span style="color: #ff0033">*</span></td>
                                                    <td align="left" colspan="2" valign="top">
                                                        
                                                        <asp:RadioButtonList ID="HotelDCButtonList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" RepeatDirection="Horizontal" Width="120px">
                                                            <asp:ListItem>S</asp:ListItem>
                                                            <asp:ListItem>D</asp:ListItem>
                                                            <asp:ListItem>T</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="HotelDCButtonList"
                                                            ErrorMessage="required" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                                                        DC Checkout <span style="color: #ff0033">*</span></td>
                                                    <td align="left" colspan="2" valign="top">
                                                    <USTTI:date_selector ID="checkout_date" runat=server />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 22px" valign="top">
                                                        Needs
                                                        Fund <span style="color: #ff0033">*</span></td>
                                                    <td align="left" colspan="2"  valign="top">
                                                        <asp:RadioButtonList ID="NeedsFundRadioButton" runat="server" Font-Names="Trebuchet MS"
                                                            Font-Size="11px" RepeatDirection="Horizontal" Width="102px">
                                                            <asp:ListItem>Yes</asp:ListItem>
                                                            <asp:ListItem>No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NeedsFundRadioButton"
                                                            Display="Dynamic" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                </tr>
                                            </table>
                                            <asp:GridView ID="dgOrientation" runat="server" AllowPaging="True" AllowSorting="True"
                                                AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                DataSourceID="OrientationDataSource" DataKeyNames="orientid,date_from" OnSelectedIndexChanged="SendOID" Font-Names="trebuchet ms" Font-Size="11px" Visible="False">
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="orientation_year" HeaderText="Year" />
                                                    <asp:BoundField DataField="date_from" HeaderText="From" HtmlEncode=False DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="date_to" HeaderText="To" HtmlEncode=False DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="daterange" HeaderText="Range" HtmlEncode=False DataFormatString="{0:d}" />
                                                </Columns>
                                                <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
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
                                                        OnClick="btnSaveBackLater_Click" Text="Save & Back Later" Width="100px" Visible="False" /></td>
                                                <td style="width: 3px">
                                                    <asp:Button id="btnContinue" onclick="btnContinue_Click" runat="server" Text="Continue" Font-Names="Trebuchet MS" Font-Size="11px" Visible="False"></asp:Button></td>
                                            </tr>
                                        </table>
                                    </TD></TR></TBODY></TABLE>
                                </div>
                                <asp:SqlDataSource ID="OrientationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [orientation] ORDER BY [date_from] DESC"></asp:SqlDataSource>
                                    &nbsp;
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
