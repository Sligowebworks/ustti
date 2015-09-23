<%@ Page Language="C#" AutoEventWireup="true" CodeFile="region_add_record.aspx.cs" Inherits="region_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_region_level_1" Src="~/controls/nav_region_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_region.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Region Data</title>
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
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;</td>
                            <td class="top_bar_right" ></td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							 </td>
							<td class="content_text" valign=top>
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    Region Information</div><table class="data_entry_form" cellpadding="4">
                                        <tr>
                                            <td class="entry_form_header" colspan="3" valign="top">
                                                Region Information</td>
                                        </tr>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table class="entry_form_detail" id="tblSelectCourse" runat=server>
                                                <tr>
                                            <td style="width: 100px" valign="middle">
                                                Region ABBR <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtABBR" runat="server" Width="30px" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="2"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtABBR"
                                                            ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px" valign="middle">
                                                        Region Name <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtRegionName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="40"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegionName"
                                                            ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td valign="top" >
                                                <asp:Button ID="btnSubmit" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                    Text="Save" OnClick="btnSubmit_Click" /></td>
                                        </tr>
                                    </table>
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
