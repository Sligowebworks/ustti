<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adhocSearch.aspx.cs" Inherits="search_adhocSearch" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>

    <script type="text/javascript">
            
        function enableMultiple()
        {                    
            document.getElementById('span_SingleYear').style.display = "none";              
            document.getElementById('span_MultipleYear').style.display = "block";              
        }                           
    
    </script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Report Generator</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0" cellpadding="0">
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" >
                                <USTTI:nav_miscellaneous_level_1 ID="nav_miscellaneous_level1" runat=server /></td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
                                <div class="page_title">
                                   Ad-hoc Search
                                </div>
                                <div class="page_sub_title">                                   
                                </div>
                                <div class="page_content">  
                                <!-- Start Page Content -->
                                
                                <table border="0" class="data_entry_form" cellpadding="4" width="700">
                                <tbody>
                                <tr>                                  
                                    <td class="entry_form_header" valign="top" colspan="3">Please enter your parameters</td>
                                </tr>
                                <tr>
                                    <td>                                    
                                        <table width="90%" border="0" cellspacing="0" cellPadding="4" >
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">Last Name </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtLastName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>                                        
                                            <td style="width: 98px; height: 28px;" valign="middle">First Name </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtFirstName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">D.O.B (mm/dd/yyyy) </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtdob" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>                                        
                                            <td style="width: 98px; height: 28px;" valign="middle">Applicant ID </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtApplicantId" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">Course Num </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtCourseNum" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>
                                            
                                            <!-- Start Year Functinality -->
                                            <td style="width: 98px; height: 28px;" valign="middle">Year</td>
                                            <td colspan="3">
                                                <div style="display:block;" id="span_SingleYear">
                                                <table border="0">
                                                <tr>
                                                    <td colspan="3">
                                                        <asp:TextBox ID="txtYear" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>&nbsp;&nbsp;<a href="javascript:enableMultiple()";>Range</a>                                            
                                                    </td>
                                                </tr>
                                                </table>
                                                </div>
                                                <div style="display:none;" id="span_MultipleYear">
                                                <table border="0">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="StartYear" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>                                            
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="EndYear" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                </table>
                                                </div>
                                            </td>
                                            <!-- End Year Functionality -->
                                        </tr>          
                                        <tr>
                                            <td style="width: 98px; height: 50px;" valign="middle">Course Title </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtCourseTitle" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="50"></asp:TextBox>
                                            </td>  
                                            <td style="width: 98px; height: 50px;" valign="middle">Course Funder </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtFunder" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>                                      
                                            <td style="width: 98px; height: 28px;" valign="middle">Course Start Date (mm/dd/yyyy) </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtCourseStartDate" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>                                                
                                                <asp:CustomValidator Runat="server" ControlToValidate="txtCourseStartDate" EnableClientScript="False" ErrorMessage="Invalid DateTime Format" ID="CustomValidateStartDate" ClientValidationFunction="ValidateTextBox1" OnServerValidate="CustomValidatorStartDate" Font-Names="Trebuchet MS" Font-Size="11px"></asp:CustomValidator>                                              
                                            </td>
                                            <td style="width: 98px; height: 28px;" valign="middle">Orientation Date (mm/dd/yyyy) </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtOrientationDate" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                                <asp:CustomValidator Runat="server" ControlToValidate="txtOrientationDate" EnableClientScript="False" ErrorMessage="Invalid DateTime Format" ID="CustomValidateOrientationDate" ClientValidationFunction="ValidateTextBox2" OnServerValidate="CustomValidatorOrientationDate" Font-Names="Trebuchet MS" Font-Size="11px"></asp:CustomValidator>
                                            </td>
                                        </tr>                                                                                                  
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">Country Name </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtCountry" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 98px; height: 50px;" valign="middle">Course Sponsor </td>
                                            <td colspan=2>
                                                <asp:TextBox ID="txtSponsor" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 98px; height: 28px;" valign="middle">Gender </td>
                                            <td colspan=2>
                                                <asp:RadioButtonList id="GenderGroup" runat="server" RepeatDirection="Horizontal">
					                                <asp:ListItem Value="M">Male</asp:ListItem>
					                                <asp:ListItem Value="F">Female</asp:ListItem>
				                                </asp:RadioButtonList>
                                            </td>
                                            <td style="width: 98px; height: 50px;" valign="middle">Participant </td>
                                            <td colspan=2>
                                                <asp:RadioButtonList id="ParticipantGroup" runat="server" RepeatDirection="Horizontal">
				                                	<asp:ListItem Value="Y">Yes</asp:ListItem>
					                                <asp:ListItem Value="N">No</asp:ListItem>
				                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Button id="btnSearch" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnSearch_Click" Text="Search" Width="100px"/>
                                                <asp:Button id="btnClear" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnClear_Click" Text="Reset Form" Width="100px"/>                                                
                                            </td>
                                        </tr>                                        
                                        </table>
                                    </td>
                                </tr>  
                                </tbody>                              
                                </table>                                
                                <!-- End Page Content -->                              
                                </div>  
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height="75px">
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
