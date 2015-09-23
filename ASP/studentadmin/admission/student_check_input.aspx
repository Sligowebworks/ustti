<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_check_input.aspx.cs" Inherits="studentadmin_admission_student_check_input" %>

<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
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
                                &nbsp;
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							    <div class="page_title">Add New Student</div>
							    
							        <TABLE class="data_entry_form" cellPadding=4>
							        <TBODY>
							        <TR>
							            <TD class="entry_form_header" vAlign=top colSpan=3>
                                            Student Personal Information
                                        </TD>
                                    </TR>
                                    <TR>
                                        <TD vAlign=middle colSpan=3>
                                            <TABLE id="tblEntryForm" class="entry_form_detail2" width="90%" runat="server">
                                            <TBODY>
                                            <TR>                                  
                                                <td style="width: 98px" valign="middle">First Name <span style="color: #ff0000">*</span></td>
                                                <td colspan=2>
                                                    <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </td>
                                            </TR>
                                            <TR>    
                                                <td style="width: 98px" valign="middle">Last Name <span style="color: #ff0000">*</span></td>
                                                <td style="HEIGHT: 26px" colSpan=2>
                                                    <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="30"></asp:TextBox><asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="required" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                </td>                                                                                            
                                            </TR>
                                            <tr>
                                                <td style="width: 98px; height: 26px;" valign="top">Date of Birth <span style="color: #ff0000">*</span></td><TD vAlign=top align=left colSpan=2 style="height: 26px">
                                                    <USTTI:date_selector ID="dob_selector" runat=server />
                                                </td>
                                            </tr>
                                        </TD>
                                    </TR>                                    
                                    <TR>
                                        <td>
                                        <table>                                        
                                        <tr>
                                            <td>
                                                <asp:Button id="btnContinue" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnContinue_Click" Text="Search" Width="100px"/>
                                            </td>                                    
                                        </tr>
                                        </table>
                                        </td>                            
                                    </TR>
                                    </TBODY>
                                    </TABLE>							
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
			<tr>
                <td valign="bottom">
                    <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                </td>
            </tr>
		</table>
	    </form>
	</body>	
</HTML>
