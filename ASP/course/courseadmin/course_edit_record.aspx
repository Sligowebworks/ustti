<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course_edit_record.aspx.cs" Inherits="course_edit_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course Information</title>
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
                            <td class="top_bar_right">
                               
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							     <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>							
                                <div class="page_title">
                                Edit Course
                                </div>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5">
                                <TBODY><TR><TD class="entry_form_header" vAlign=top colSpan=3>Course Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle" >
                                            <table width="90%" class="entry_form_detail">
                                                <tr>
                                                    <td style="width: 100px">
                                                        Course Code</td>
                                                    <td colspan="2">
                                                        <asp:Label ID="lblCourseID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
                      Title <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtTitle" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Height="100px" TextMode="MultiLine" Width="200px" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
        Display="Dynamic" ErrorMessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
    Location <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtLocation" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" MaxLength="60"></asp:TextBox><asp:RequiredFieldValidator id="LastNameValidator" runat="server" SetFocusOnError="True" ErrorMessage="required" ControlToValidate="txtLocation" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
    Coordinator</td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtCoordinator" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" CssClass="font_format" MaxLength="60"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 18px;" valign="top">
    Train From <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2" style="height: 18px">
                                                    <USTTI:date_selector ID="start_date" runat=server />
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
    Train To <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                    <USTTI:date_selector ID="end_date" runat=server />
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="top">
    Comment</td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtComment" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Height="100px" TextMode="MultiLine" Width="200px" MaxLength="60"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
    Slot</td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtSlot" runat="server" Font-Size="11px" Font-Names="Trebuchet MS"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSlot"
            ErrorMessage="Please enter integer value" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator></td>
                                                </tr>
                                                <tr>
                                                    <TD style="WIDTH: 100px" vAlign=middle>
    Primary Sponsor <span style="color: #ff0033">*</span></TD>
                                                    <td colspan="2">
    <asp:DropDownList id="SponsorList" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" DataSourceID="SponsorDataSource" DataTextField="sponsname" DataValueField="sponsid">
                      
                  </asp:DropDownList><asp:RequiredFieldValidator ID="SponsorValidator" runat="server" ControlToValidate="SponsorList"
                          Display="Dynamic" ErrorMessage="required" SetFocusOnError="True" InitialValue="-Select Sponsor-"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <TD style="WIDTH: 100px" vAlign=middle>
    Course Year <span style="color: #ff0033">*</span></TD>
                                                    <td colspan="2">
                                                        <asp:DropDownList id="YearList" runat="server" Font-Size="11px" Font-Names="Trebuchet MS">
</asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="YearList"
                        Display="Dynamic" ErrorMessage="required" SetFocusOnError="True" InitialValue="-Select Year-"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                        <td style="width: 100px; height: 44px" valign="top">
                                            More Sponsors <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2" valign=top >
                                                        <asp:RadioButtonList ID="MoreSponsorRadioButtonList" runat="server" Font-Names="Trebuchet MS"
                                                            Font-Size="11px" RepeatDirection="Horizontal" OnSelectedIndexChanged="DeleteSponsor" AutoPostBack=true >
                                                            <asp:ListItem>Yes</asp:ListItem>
                                                            <asp:ListItem>No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MoreSponsorRadioButtonList"
                                                            Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>Note:
                                                        If you change from Yes to No it will automatically delete the existing multiple
                                                        sponsors</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3><asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Text="Save" Font-Names="Trebuchet MS" Font-Size="11px"></asp:Button></TD></TR></TBODY></TABLE>
                                </div>
                                <asp:SqlDataSource ID="SponsorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT [sponsname], [sponsid] FROM [sponsors]"></asp:SqlDataSource>
                               <asp:SqlDataSource ID="SponsCrsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    DeleteCommand="DELETE FROM sponsorcrse WHERE sponcrseid=@sponcrseid"></asp:SqlDataSource>
                                &nbsp;&nbsp;
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height="75px">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>