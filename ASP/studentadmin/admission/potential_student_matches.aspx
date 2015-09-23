<%@ Page Language="C#" AutoEventWireup="true" CodeFile="potential_student_matches.aspx.cs" Inherits="studentadmin_admission_Potential_Student_Matches" %>

<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />
	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand"  cellspacing="0" cellpadding="0">
		    <tr>
		        <td><USTTI:header_level_0 ID="header" runat=server /></td>
			</tr>		
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0" border="1">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right">
                                &nbsp;                        
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
                            </td>
							<td class="content_text" valign=top>
							
							 <div class="page_title">Potential Matches</div>
							
							 <div class="gridview">
                                <asp:GridView ID="dgStudent" runat="server" AutoGenerateColumns=False AllowSorting=True CellPadding="5"
                                 DataKeyNames="studentid" BorderColor=DarkGray BorderStyle=Double  Font-Size=11px Font-Names="trebuchet ms" >
                                 
                                      <AlternatingRowStyle BackColor=#EFEFEF  />
                                      <HeaderStyle BackColor=#CAD3DC Font-Bold=True Font-Size=12px Font-Names="trebuchet ms" />
                                      
                                      <Columns>
                                      
                                        <asp:HyperLinkField DataNavigateUrlFields="studentid" DataNavigateUrlFormatString="prestudent_detail_view.aspx?studentid={0}&amp;mode=edit"
                                            NavigateUrl="~/studentadmin/admission/prestudent_detail_view.aspx" Text="Detail Info" >
                                            <ItemStyle Wrap="False" />
                                        </asp:HyperLinkField>
                                        
                                        <asp:BoundField HeaderText="First Name" DataField="firstname" />
                                        
                                        <asp:BoundField HeaderText="Last Name" DataField="lastname" />
                                        
                                        <asp:BoundField HeaderText="Date of Birth" DataField="dob" HtmlEncode="False" DataFormatString="{0:d}" />                                                                              
                                          
                                      </Columns>
                                      <PagerStyle BackColor=#CAD3DC Font-Size=11px Font-Names="trebuchet ms" /> 
                                      
                                      <PagerSettings  Mode=NumericFirstLast />
                                        
                                    </asp:GridView>  
                                    
                                    <br>                                                             
                                    
                                    <asp:Button id="btnContinue" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="btnContinue_Click" Text="Add Student Anyway" />
                                </div>																					
                            </td>
						</tr>						
                        <tr>
                            <td valign=bottom>
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
