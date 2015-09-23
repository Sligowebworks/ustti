<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orientation_add_record.aspx.cs" Inherits="orientation_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_orientation_level_1" Src="~/controls/nav_orientation_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_orientation.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Orientation Information</title>
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
                            <td align="center" class="top_bar_left"  width="176" style="height: 11px"  >
                             &nbsp;   </td>
                            <td class="top_bar_right">
                            
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top style="height: 294px">
							<USTTI:menu ID="menu" runat="server" />							
                                <div class="page_title">
                                    Add New Orientation</div>
                                    <table  class="data_entry_form">
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top">
                                                Orientation Information</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75px; height: 26px;" valign="middle">
                                                Year <span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 26px" valign="top">
                                                &nbsp;<asp:DropDownList ID="OrientationYearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="OrientYearValidator" runat="server" ControlToValidate="OrientationYearList"
                                                    Display="Dynamic" ErrorMessage="required" InitialValue="-Select Year-" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75px" valign="top">
                                                From <span style="color: #ff0033">*</span></td>
                                            <td colspan="2" valign="top" align="left">
                                                <USTTI:date_selector ID="start_date" runat=server />
                                                </td>
                                        </tr>
                                        <tr style="color: #000000">
                                            <td style="width: 75px; height: 28px" valign="top">
                                                To <span style="color: #ff0033">*</span></td>
                                            <td colspan="2" style="height: 28px" align="left" valign="top">
                                            <USTTI:date_selector ID="end_date" runat=server /></td>
                                        </tr>
                                        <tr>
                                            <td  valign="middle" style="width: 75px" >
                                                Range</td>
                                            <td colspan="2" valign="top" >
                                                &nbsp;<asp:TextBox ID="txtRange" runat="server" MaxLength="40" Width="135px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" valign="middle">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="height: 29px">
                                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Save" Font-Names="Trebuchet MS" Font-Size="11px" /></td>
                                        </tr>
                                    </table>
                                    &nbsp;&nbsp;
                                
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
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