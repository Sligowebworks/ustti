<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funder_edit_record.aspx.cs" Inherits="course_courseadmin_course_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_funder_level_1" Src="~/controls/nav_funder_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Funder Information</title>
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
                            <td align="center" class="top_bar_left"  width="176" >
                           
                                </td>
                            <td class="top_bar_right">
                            
                                </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							   <USTTI:nav_level_0 ID=nav_level1 runat=server />
							</td>
							<td class="content_text" valign=top>
                            <div class="page_title">Edit Funder Information</div>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5"><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Funder Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                            <table width="90%" class="entry_form_detail">
                                                <tr>
                                                    <td style="width: 100px">
                                                        Funder Type <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:DropDownList id="FunderTypeList" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" DataSourceID="FunderTypeDataSource" DataTextField="fundertypdes" DataValueField="fundertypid" Width="200px">
                    
                </asp:DropDownList><asp:RequiredFieldValidator ID="FunderTypeValidator" runat="server" ControlToValidate="FunderTypeList"
                        Display="Dynamic" ErrorMessage="required" SetFocusOnError="True" InitialValue="-Select Funder Type-"></asp:RequiredFieldValidator></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        Funder Name <span style="color: #ff0033">*</span></td>
                                                    <td colspan="2">
                                                        <asp:TextBox id="txtFunderName" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" CssClass="font_format" Width="200px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtFunderName"></asp:RequiredFieldValidator></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3><asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Text="Save" Font-Names="Trebuchet MS" Font-Size="11px"></asp:Button></TD></TR></TBODY></TABLE>
                                </div>
                                <asp:SqlDataSource ID="FunderTypeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [fundertype]"></asp:SqlDataSource>
                                &nbsp;&nbsp;
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
